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
                    <p class="breadcrumbs"><span class="mr-2"><a href="{{ route('page.home') }}">Trang chủ <i class="fa fa-chevron-right"></i></a></span> <span>Tin tức <i class="fa fa-chevron-right"></i></span></p>
                    <h1 class="mb-0 bread">Tin tức</h1>
                </div>
            </div>
        </div>
    </section>
    <section class="ftco-section">
        <div class="container">
            <div class="row d-flex">
                @if ($articles->count() > 0)
                    @foreach($articles as $article)
                        <div class="col-md-4 d-flex ftco-animate fadeInUp ftco-animated">
                            <div class="blog-entry justify-content-end">
                                <a href="{{ route('articles.detail', ['id' => $article->id, 'slug' => safeTitle($article->a_title)]) }}"
                                   class="block-20" style="background-image: url({{ asset(pare_url_file($article->a_avatar)) }});" alt="{{ $article->a_title }}">
                                </a>
                                <div class="text">
                                    <div class="d-flex align-items-center mb-4 topp">
                                        <div class="one">
                                            <span class="day">{{ date('d', strtotime($article->created_at)) }}</span>
                                        </div>
                                        <div class="two">
                                            <span class="yr">{{ date('Y', strtotime($article->created_at)) }}</span>
                                            <span class="mos">{{ date('M', strtotime($article->created_at)) }}</span>
                                        </div>
                                    </div>
                                    <h3 class="heading" title="{{ $article->a_title }}"><a href="{{ route('articles.detail', ['id' => $article->id, 'slug' => safeTitle($article->a_title)]) }}">{{ the_excerpt($article->a_title, 100) }}</a></h3>
                                    <p>{!! the_excerpt($article->a_description, 200) !!}</p>
                                    <p><a href="{{ route('articles.detail', ['id' => $article->id, 'slug' => safeTitle($article->a_title)]) }}" class="btn btn-primary">Xem thêm</a></p>
                                </div>
                            </div>
                        </div>
                    @endforeach

                @endif
            </div>
            <div class="row mt-5">
                <div class="col text-center">
                    <div class="block-27">
                        {{ $articles->links('page.pagination.default') }}
                    </div>
                </div>
            </div>
        </div>
    </section>
@stop
@section('script')
@stop