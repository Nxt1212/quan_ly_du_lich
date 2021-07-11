<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="{{ route('page.home') }}">Pacific<span>Travel Agency</span></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>
        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item {{ request()->is('/') ? 'active' : ''}}"><a href="{{ route('page.home') }}" class="nav-link">Trang chủ</a></li>
                <li class="nav-item {{ request()->is('ve-chung-toi.html') ? 'active' : '' }}"><a href="{{ route('about.us') }}" class="nav-link">Giới thiệu</a></li>
                <li class="nav-item {{ request()->is('tour.html') ? 'active' : '' }}"><a href="{{ route('tour') }}" class="nav-link">Tours</a></li>
                <li class="nav-item"><a href="" class="nav-link">Khách sạn</a></li>
                <li class="nav-item {{ request()->is('tin-tuc.html') || request()->is('tin-tuc/*')  ? 'active' : '' }}"><a href="{{ route('articles.index') }}" class="nav-link">Tin tức </a></li>
                <li class="nav-item"><a href="" class="nav-link">Liên hệ</a></li>
                <li class="nav-item"><a href="" class="nav-link">Đăng ký</a></li>
                <li class="nav-item"><a href="" class="nav-link">Đăng nhập</a></li>
            </ul>
        </div>
    </div>
</nav>