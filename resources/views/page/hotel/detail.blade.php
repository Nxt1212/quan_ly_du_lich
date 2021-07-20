@extends('page.layouts.page')
@section('title', $hotel->h_name)
@section('style')
@stop
@section('seo')
@stop
@section('content')
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url({{ asset('/page/images/bg_1.jpg') }});">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
                <div class="col-md-9 ftco-animate pb-5 text-center">
                    <p class="breadcrumbs"><span class="mr-2"><a href="{{ route('page.home') }}">Trang chủ <i class="fa fa-chevron-right"></i></a></span> <span>Khách sạn <i class="fa fa-chevron-right"></i></span></p>
                    <h1 class="mb-0 bread">Khách Sạn</h1>
                </div>
            </div>
        </div>
    </section>
    <section class="ftco-section ftco-no-pt ftco-no-pb">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 ftco-animate mt-md-5 fadeInUp ftco-animated">
                    <h2 class="mb-3">{{ $hotel->h_name }}</h2>
                </div>
                <div class="col-lg-8 ftco-animate fadeInUp ftco-animated">
                    <p>
                        <img src="{{ $hotel->h_image ? asset(pare_url_file($hotel->h_image)) : asset('admin/dist/img/no-image.png') }}" alt="{{ $hotel->h_name }}" class="img-fluid" style="width: 100%">
                    </p>
                    <h2 class="mb-3 mt-5">#1. Thông tin liên hệ</h2>
                    <table class="table table-bordered">
                        <tr>
                            <td width="30%">Địa điểm </td>
                            <td>{{ isset($hotel->location) ? $hotel->location->l_name : '' }}</td>
                        </tr>
                        <tr>
                            <td width="30%">Địa chỉ </td>
                            <td>{{ $hotel->h_address }}</td>
                        </tr>
                        <tr>
                            <td width="30%">Điện thoại </td>
                            <td>{{ $hotel->h_phone }}</td>
                        </tr>
                        <tr>
                            <td width="30%">Giá từ </td>
                            <td>{{ number_format($hotel->h_price,0,',','.') }} vnđ</td>
                        </tr>
                    </table>
                    <h2 class="mb-3 mt-5">#2. Mô tả</h2>
                    {!! $hotel->h_description  !!}
                    <h2 class="mb-3 mt-5">#3. Nội dung</h2>
                    {!! $hotel->h_content  !!}
                </div> <!-- .col-md-8 -->
                <div class="col-lg-4 sidebar ">
                    <div class="register-tour">
                        <p class="price-tour">Giá từ : <span>{{ number_format($hotel->h_price, 0, ',', '.') }}</span> vnd</p>
                        <a href="#" class="btn btn-primary py-3 px-4" style="width: 80%">Liên hệ</a>
                    </div>
                    @if ($hotels->count() > 0)
                    <div class="bg-light sidebar-box ftco-animate fadeInUp ftco-animated related-tour">
                        <h3>Danh Sách Khách Sạn Liên Quan</h3>
                        <?php $itemHotel = 'item-related-tour' ?>
                        @foreach($hotels as $hotel)
                            @include('page.common.itemHotel', compact('hotel', 'itemHotel'))
                        @endforeach
                    </div>
                    @endif
                </div>

            </div>
        </div>
    </section>
@stop
@section('script')
@stop