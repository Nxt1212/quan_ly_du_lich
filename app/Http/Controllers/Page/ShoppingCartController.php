<?php

namespace App\Http\Controllers\Page;;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Cart;
use App\Models\ProductCart;
use App\Models\Locations;
use App\Models\Transaction;
use App\Http\Requests\PaymentRequest;
use Illuminate\Support\Facades\Auth;

class ShoppingCartController extends Controller
{
    //
    public function addCart(Request $request)
    {
        if ($request->ajax()) {
            \DB::beginTransaction();
            try {
                $code = 200;
                $message = "Đã xảy ra lỗi không thể thêm sản phẩm vào giỏ hàng !";

                $product = Product::find($request->id);
                $ip = $request->getClientIp();
                if (!$product) {
                    $code = 404;
                    return response([
                        'status_code' => $code,
                        'message' => $message,
                    ]);
                }

                $cart = Cart::where(['cr_ip_address' => $ip, 'cr_status' => 0])->first();

                if (!$cart) {
                    $cart = new Cart();
                    $cart->cr_ip_address = $ip;
                    $cart->save();
                }

                $productCart = ProductCart::where([
                    'pc_cart_id' => $cart->id,
                    'pc_product_id' => $product->id,
                    'pc_status' => 0,
                    'pc_color' => $request->color,
                    'pc_size' => $request->size
                ])->first();

                if (!$productCart) {
                    $productCart = new ProductCart();
                    $productCart->pc_cart_id = $cart->id;
                    $productCart->pc_product_id  = $product->id;
                    $productCart->pc_name  = $product->pro_name;
                    $productCart->pc_price  = $product->pro_price;
                    $productCart->pc_sale  = $product->pro_sale;
                    $productCart->pc_qty  = $request->numberProdcut;
                    $productCart->options  = $product->pro_avatar;
                    $productCart->pc_color  = $request->color;
                    $productCart->pc_size  = $request->size;

                } else {
                    $productCart->pc_qty = $productCart->pc_qty + intval($request->numberProdcut);
                }
                if ($productCart->save()) {
                    $message = "Thêm thành công sản phẩm vào giỏ hàng";
                }

                \DB::commit();
            } catch (\Exception $exception) {
                \DB::rollBack();
                $code = 404;
            }
            $routeRedirect = '';
            if ($request->type == 'buy_now') {
                $routeRedirect = route('cart.payment');
            }

            return response([
                'status_code'=> $code,
                'product_name' => $product->pro_name,
                'ip' => $request->getClientIp(),
                'qty' => ProductCart::where('pc_cart_id', $cart->id)->sum('pc_qty'),
                'message' => $message,
                'routeRedirect' => $routeRedirect,
            ]);
        }

    }

    public function quickViewCart(Request $request)
    {
        if ($request->ajax()) {
            $ip = $request->getClientIp();
            $cart = Cart::with('productCart')->where(['cr_ip_address' => $ip, 'cr_status' => 0])->first();
            $html =  view('page.common.cart', compact('cart'))->render();
            return response([
                'html' => $html
            ]);
        }
    }

    public function viewCart(Request $request)
    {
        $ip = $request->getClientIp();
        $cart = Cart::with('productCart')->where(['cr_ip_address' => $ip, 'cr_status' => 0])->first();
        return view('page.cart.index', compact('cart'));
    }

    public function updateCart(Request $request, $cartId, $productId)
    {
        if ($request->ajax()) {

            $code = 200;
            $message = "Đã xảy ra lỗi không thể cập nhật sản phẩm !";

            $productCart = ProductCart::where([
                'pc_cart_id' => $cartId,
                'pc_product_id' => $productId,
                'pc_status' => 0,
                'pc_color' => $request->color,
                'pc_size' => $request->size
            ])->first();

            if (!$productCart) {
                $code = 404;
                return response([
                    'status_code' => $code,
                    'message' => $message,
                ]);
            }

            if ($productCart->pc_sale) {
                $priceProduct = ((100 - $productCart->pc_sale) * $productCart->pc_price)  /  100 ;
            } else {
                $priceProduct = $productCart->pc_price;
            }
            $productCart->pc_qty = $request->numProduct;
            $totalProduct = intval($request->numProduct) * $priceProduct;

            if ($productCart->save()) {
                $numberCart = 0;
                $totalCart = 0;
                $cart = Cart::with('productCart')->find($cartId);

                if ($cart->productCart->count() > 0) {
                    foreach($cart->productCart as $product) {
                        $numberCart = $numberCart + $product->pc_qty;
                        if ($product->pc_sale) {
                            $price = ((100 - $product->pc_sale) * $product->pc_price)  /  100 ;
                        } else {
                            $price = $product->pc_price;
                        }
                        $totalCart = $totalCart + intval($product->pc_qty) * $price;
                    }
                }

                return response([
                    'status_code' => $code,
                    'productId' => $productId,
                    'numberCart' => $numberCart,
                    'totalProduct' => number_format($totalProduct, 0,',','.'). 'vnđ',
                    'totalCart' => number_format($totalCart, 0,',','.'). 'vnđ' ,
                    'message' => 'Cập nhật thành công',
                ]);
            }
        }
    }

    public function payment(Request $request)
    {
        $citys = (new Locations())->getCity();
        $district = Locations::where('loc_level',2)->select('loc_name','id')->get();
        $street   = Locations::where('loc_level',3)->select('loc_name','id')->get();
        $ip = $request->getClientIp();
        $cart = Cart::with('productCart')->where(['cr_ip_address' => $ip, 'cr_status' => 0])->first();
        $viewData = [
            'citys'        => $citys,
            'district' => $district,
            'street'   => $street,
            'cart' => $cart
        ];
        return view('page.cart.payment', $viewData);
    }

    public function postPayment(PaymentRequest $request)
    {
        $ip = $request->getClientIp();
        $cart = Cart::with('productCart')->where(['cr_ip_address' => $ip, 'cr_status' => 0])->first();
        if (!$cart) {
            return redirect()->route('page.home');
        }
        $totalCart = 0;
        if ($cart->productCart->count() > 0) {
            foreach($cart->productCart as $product) {

                if ($product->pc_sale) {
                    $price = ((100 - $product->pc_sale) * $product->pc_price)  /  100 ;
                } else {
                    $price = $product->pc_price;
                }
                $totalCart = $totalCart + intval($product->pc_qty) * $price;
            }
        }

        \DB::beginTransaction();
        try {
            $data = [
                'tst_user_id' => \Auth::check() ? \Auth::user()->id : null,
                'tst_total_money' => $totalCart + 35000,
                'tst_name' => $request->name,
                'tst_email' => $request->email,
                'tst_phone' => $request->phone,
                'tst_address' => $request->address,
                'tst_note' => $request->note,
                'tr_city_id' => $request->city_id,
                'tr_district_id' => $request->district_id,
                'tr_street_id' => $request->street_id,
                'tr_payment_methods' => $request->payment_methods,
            ];
            $transaction = Transaction::create($data);
            if ($transaction->id) {
                $cart->cr_status = 1;
                if ($cart->save()) {
                    ProductCart::where('pc_cart_id', $cart->id)->update(['pc_transaction_id' => $transaction->id, 'pc_status' => 1]);
                }
            }
            \DB::commit();
            return redirect()->route('page.home')->with('success', 'Đặt hàng thành công.');
        } catch (\Exception $exception) {
            \DB::rollBack();
            return redirect()->route('page.home')->with('error', 'Đặt hàng thành công.');
        }
    }

    public function deleteProductCart(Request $request, $id)
    {
        if ($request->ajax()) {
            $code = 200;
            $message = "Đã xảy ra lỗi không thể xóa sản phẩm !";
            try {
                $productCart = ProductCart::find($id);
                $cartId = $productCart->pc_cart_id;
                $productName = $productCart->pc_name;
                if (!$productCart) {
                    $code = 404;
                    return response([
                        'status_code' => $code,
                        'message' => $message,
                    ]);
                }
                if ($productCart->delete()) {
                    $numberCart = 0;
                    $totalCart = 0;
                    $cart = Cart::with('productCart')->find($cartId);

                    if ($cart->productCart->count() > 0) {
                        foreach($cart->productCart as $product) {
                            $numberCart = $numberCart + $product->pc_qty;
                            if ($product->pc_sale) {
                                $price = ((100 - $product->pc_sale) * $product->pc_price)  /  100 ;
                            } else {
                                $price = $product->pc_price;
                            }
                            $totalCart = $totalCart + intval($product->pc_qty) * $price;
                        }
                    }

                    return response([
                        'status_code' => $code,
                        'productCart' => $id,
                        'productName' => $productName,
                        'numberCart' => $numberCart,
                        'totalCart' => number_format($totalCart, 0,',','.'). 'vnđ' ,
                        'message' => 'Xóa thành công sản phẩm khỏi giỏ hàng',
                    ]);
                }
            } catch (\Exception $exception) {
                if (!$productCart) {
                    $code = 404;
                    return response([
                        'status_code' => $code,
                        'message' => $message,
                    ]);
                }
            }
        }
    }
}
