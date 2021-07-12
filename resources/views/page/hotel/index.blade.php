@extends('page.layouts.page')
@section('title', 'Tin tức Du lịch - Thông tin Du lịch, Tin tức Du Lịch Việt Nam 2021')
@section('style')
@stop
@section('content')
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url({{ asset('/page/images/bg_1.jpg') }});">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
                <div class="col-md-9 ftco-animate pb-5 text-center">
                    <p class="breadcrumbs"><span class="mr-2"><a href="{{ route('page.home') }}">Trang chủ <i class="fa fa-chevron-right"></i></a></span> <span>Khách sạn <i class="fa fa-chevron-right"></i></span></p>
                    <h1 class="mb-0 bread">Khách sạn</h1>
                </div>
            </div>
        </div>
    </section>
    <section class="ftco-section">
        <div class="container">
            <div class="row">
                @if ($hotels->count())
                    @foreach($hotels as $hotel)
                        <div class="col-md-4 ftco-animate fadeInUp ftco-animated">
                            <div class="project-wrap hotel">
                                <a href="#" class="img" style="background-image: url({{ $hotel->h_image ? asset(pare_url_file($hotel->h_image)) : asset('admin/dist/img/no-image.png') }});">
                                    <span class="price">{{ number_format($hotel->h_price,0,',','.') }} vnd</span>
                                </a>
                                <div class="text p-4">
                                    <p class="star mb-2">
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                    </p>
                                    <span class="days">8 Days Tour</span>
                                    <h3><a href="#">Manila Hotel</a></h3>
                                    <p class="location"><span class="fa fa-map-marker"></span> Manila, Philippines</p>
                                    <ul>
                                        <li><span class="flaticon-shower"></span>2</li>
                                        <li><span class="flaticon-king-size"></span>3</li>
                                        <li><span class="flaticon-mountains"></span>Near Mountain</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    @endforeach
                @endif
            </div>
            <div class="row mt-5">
                <div class="col text-center">
                    <div class="block-27">
                        {{ $hotels->links('page.pagination.default') }}
                    </div>
                </div>
            </div>
        </div>
    </section>
@stop
@section('script')
@stop