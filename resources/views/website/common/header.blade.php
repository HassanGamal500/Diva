<!-- start Navbar -->
<section class="custom-bg">
<div class="container pt-4">
  <div class="row mt-4">
    <div class="col-lg-12 d-none d-lg-block">
        <a href="{{url('/')}}">
            <div class="img-holder mx-auto logo" style="background-image: url({!! asset('website/img/logo.png') !!});"></div>
        </a>
      
    </div>
    <div class="col-lg-12">
      <nav class="navbar navbar-expand-lg navbar-light vollkorn">
        <a class="navbar-brand d-lg-none d-block" href="{{url('/')}}">
          <div class="img-holder mx-auto logo-nav" style="background-image: url({!! asset('website/img/logo.png') !!});"></div>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
                aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
          <ul class="navbar-nav mx-auto">
            <li class="nav-item {{ Request::is('/') ? 'active' : '' }}">
              <a class="nav-link" href="{{url('/')}}">{{trans('website.Home')}}</a>
            </li>
            <li class="nav-item {{ Request::is('blog') ? 'active' : '' }} {{ Request::is('blog/*') ? 'active' : '' }}">
              <a class="nav-link" href="{{url('blog')}}">{{trans('website.blogs')}}</a>
            </li>
            <li class="nav-item {{ Request::is('aboutUs') ? 'active' : '' }}">
              <a class="nav-link" href="{{url('aboutUs')}}">{{trans('website.About Us')}}</a>
            </li>
            <li class="nav-item {{ Request::is('contactUs') ? 'active' : '' }}">
              <a class="nav-link" href="{{url('contactUs')}}">{{trans('website.Contact Us')}}</a>
            </li>
            <li class="nav-item {{ Request::is('terms') ? 'active' : '' }}">
              <a class="nav-link" href="{{url('terms')}}">{{trans('website.Terms & Condtions')}}</a>
            </li>
            
            
            @if(Auth::guard('customer')->check())
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    {{Auth::guard('customer')->user()->first_name}}
                    <i class="far fa-user"></i>
                </a>
                <div class="dropdown-menu dark-drop" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item borderBottom" href="{{url('myAccount')}}">{{trans('website.My Account')}}</a>
                    <a class="dropdown-item" href="{{url('web-logout')}}">{{trans('website.Logout')}}</a>
                </div>
            </li>
            @else
            <li class="nav-item d-flex">
              <a class="nav-link px-1" data-toggle="modal" data-target="#login">{{trans('website.Login')}} |</a>
              <a class="nav-link px-0" data-toggle="modal" data-target="#register">{{trans('website.Register')}}</a>
            </li>
            @endif
            
            
            <li class="nav-item">
            @if (session()->get('front-locale') == 'ar')
              <a class="nav-link" href="{{url('site/lang/en')}}">
                <span>English</span>
              </a>
            @else
              <a class="nav-link" href="{{url('site/lang/ar')}}">
                <span>العربية</span>
              </a>
            @endif
            
              
              
            </li>
            
          </ul>
        </div>
      </nav>
    </div>
  </div>
</div>
</section>
<!-- end Navbar -->