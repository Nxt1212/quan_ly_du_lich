@extends('page.layouts.page')
@section('title', $tour->t_title)
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
                    <p class="breadcrumbs"><span class="mr-2"><a href="{{ route('page.home') }}">Trang chủ <i class="fa fa-chevron-right"></i></a></span> <span>Tours <i class="fa fa-chevron-right"></i></span></p>
                    <h1 class="mb-0 bread">Tours</h1>
                </div>
            </div>
        </div>
    </section>
    <section class="ftco-section ftco-no-pt ftco-no-pb">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 ftco-animate mt-md-5 fadeInUp ftco-animated">
                    <h2 class="mb-3">{{ $tour->t_title }}</h2>
                </div>
                <div class="col-lg-8 ftco-animate fadeInUp ftco-animated">
                    <div class="description">
                        <img src="{{ $tour->t_image ? asset(pare_url_file($tour->t_image)) : asset('admin/dist/img/no-image.png') }}" alt="" class="img-fluid">
                    </div>
                    <div class="content">
                        <h2 class="mb-3 mt-5">#1. Điểm nhấn của hành trình</h2>
                        <table class="table table-bordered">
                            <tr>
                                <td width="30%">Hành trình </td>
                                <td>{{ $tour->t_journeys }}</td>
                            </tr>
                            <tr>
                                <td width="30%">Lịch trình </td>
                                <td>{{ $tour->t_schedule }}</td>
                            </tr>
                            <tr>
                                <td width="30%">Ngày đi </td>
                                <td>{{ $tour->t_start_date }}</td>
                            </tr>
                            <tr>
                                <td width="30%">Ngày về </td>
                                <td>{{ $tour->t_end_date }}</td>
                            </tr>
                            <tr>
                                <td width="30%">Vận chuyển </td>
                                <td>{{ $tour->t_move_method }}</td>
                            </tr>
                            <tr>
                                <td width="30%">Điểm xuất phát </td>
                                <td>{{ $tour->t_starting_gate }}</td>
                            </tr>
                            <tr>
                                <td width="30%">Số người tham gia</td>
                                <td>{{ $tour->t_number_guests }}</td>
                            </tr>
                            <tr>
                                <td width="30%">Đã đăng ký</td>
                                <td>{{ $tour->t_number_registered }}</td>
                            </tr>
                            <tr>
                                <td width="30%">Giá người lớn</td>
                                <td>{{ number_format($tour->t_price_adults, 0, ',', '.') }} vnd</td>
                            </tr>
                            <tr>
                                <td width="30%">Giá trẻ em</td>
                                <td>{{ number_format($tour->t_price_children, 0, ',', '.') }} vnd</td>
                            </tr>
                        </table>
                        <h2 class="mb-3 mt-5">#2. Lịch trình</h2>
                        <p>
                            {!! $tour->t_description !!}
                        </p>
                        <h2 class="mb-3 mt-5">#3. Giới thiệu tour</h2>
                        <p>
                            {!! $tour->t_content !!}
                        </p>
                    </div>

                </div> <!-- .col-md-8 -->
                <div class="col-lg-4">
                    <div class="register-tour">
                        <p class="price-tour">Giá từ : <span>{{ number_format($tour->t_price_children, 0, ',', '.') }}</span> vnd</p>
                        <a href="{{ route('book.tour', ['id' => $tour->id, 'slug' => safeTitle($tour->t_title)]) }}" class="btn btn-primary py-3 px-4" style="width: 80%">Đặt Tour</a>
                    </div>
                    @if ($tours->count() > 0)
                        <div class="bg-light sidebar-box ftco-animate fadeInUp ftco-animated related-tour">
                            <h3>Danh Sách Tour Liên Quan</h3>
                            <?php $itemTour = 'item-related-tour' ?>
                            @foreach($tours as $tour)
                                @include('page.common.itemTour', compact('tour', 'itemTour'))
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