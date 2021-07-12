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
                    <p class="breadcrumbs"><span class="mr-2"><a href="{{ route('page.home') }}">Trang chủ <i class="fa fa-chevron-right"></i></a></span> <span>Danh sách<i class="fa fa-chevron-right"></i></span></p>
                    <h1 class="mb-0 bread">Tours</h1>
                </div>
            </div>
        </div>
    </section>
    <section class="ftco-section ftco-no-pb">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="search-wrap-1 ftco-animate fadeInUp ftco-animated">
                        <form action="#" class="search-property-1">
                            <div class="row no-gutters">
                                <div class="col-md d-flex">
                                    <div class="form-group p-4 border-0">
                                        <label for="#">Tour</label>
                                        <div class="form-field">
                                            <div class="icon"><span class="fa fa-search"></span></div>
                                            <input type="text" name="key_tour" class="form-control" placeholder="Tìm kiếm">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md d-flex">
                                    <div class="form-group p-4">
                                        <label for="#">Ngày Khởi Hành</label>
                                        <div class="form-field">
                                            <div class="icon"><span class="fa fa-calendar"></span></div>
                                            <input type="text" class="form-control checkin_date" placeholder="Ngày Khởi Hành">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md d-flex">
                                    <div class="form-group p-4">
                                        <label for="#">Ngày Trở Về</label>
                                        <div class="form-field">
                                            <div class="icon"><span class="fa fa-calendar"></span></div>
                                            <input type="text" class="form-control checkout_date" placeholder="Ngày Trở Về">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md d-flex">
                                    <div class="form-group p-4">
                                        <label for="#">Khoảng giá</label>
                                        <div class="form-field">
                                            <div class="select-wrap">
                                                <div class="icon"><span class="fa fa-chevron-down"></span></div>
                                                <select name="" id="" class="form-control">
                                                    <option value="">Chọn khoảng giá</option>
                                                    <option value="0-1000000">0->1.000.000</option>
                                                    <option value="1000000-2000000">1.000.000->2.000.000</option>
                                                    <option value="2000000-3000000">2.000.000->3.000.000</option>
                                                    <option value="3000000-4000000">3.000.000->4.000.000</option>
                                                    <option value="4000000-5000000">4.000.000->5.000.000</option>
                                                    <option value="5000000-6000000">5.000.000->6.000.000</option>
                                                    <option value="6000000-7000000">6.000.000->7.000.000</option>
                                                    <option value="7000000-8000000">7.000.000->8.000.000</option>
                                                    <option value="8000000-9000000">8.000.000->9.000.000</option>
                                                    <option value="9000000-10000000">9.000.000->10.000.000</option>
                                                    <option value="10000000-11000000">10.000.000->11.000.000</option>
                                                    <option value="11000000-12000000">11.000.000->12.000.000</option>
                                                    <option value="12000000-13000000">12.000.000->13.000.000</option>
                                                    <option value="13000000-14000000">13.000.000->14.000.000</option>
                                                    <option value="14000000-15000000">14.000.000->15.000.000</option>
                                                    <option value="15000000-100000000"> Trên 15.000.000</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md d-flex">
                                    <div class="form-group d-flex w-100 border-0">
                                        <div class="form-field w-100 align-items-center d-flex">
                                            <input type="submit" value="Tìm kiếm" class="align-self-stretch form-control btn btn-primary">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="ftco-section">
        <div class="container">
            <div class="row">
                @if($tours->count() > 0)
                    @foreach($tours as $tour)
                        @include('page.common.itemTour', compact('tour'))
                    @endforeach
                @endif
            </div>
            <div class="row mt-5">
                <div class="col text-center">
                    <div class="block-27">
                        {{ $tours->links('page.pagination.default') }}
                    </div>
                </div>
            </div>
        </div>
    </section>
@stop
@section('script')
@stop