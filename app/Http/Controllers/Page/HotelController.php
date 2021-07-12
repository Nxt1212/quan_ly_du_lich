<?php

namespace App\Http\Controllers\Page;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Hotel;

class HotelController extends Controller
{
    //
    public function index(Request $request)
    {
        $hotels = Hotel::with('user')->active()->orderByDesc('id')->paginate(NUMBER_PAGINATION_PAGE);
        return view('page.hotel.index', compact('hotels'));
    }
}
