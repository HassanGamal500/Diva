@extends('website.layout')
@section('content')
    <!-- start slider -->
    <div class="container-fluid px-0">
        <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <?php $i=0 ?>
                @foreach($data['banners'] as $banners)
                <li data-target="#carouselExampleCaptions" @if($i==0) class="active" @endif data-slide-to="{{$i++}}" ></li>
                @endforeach
            </ol>
            <div class="carousel-inner">
                <?php $i=0 ?>
                @foreach($data['banners'] as $banners)
                <div class="carousel-item @if($i==0) active @endif">
                    <div class="img-cover d-block w-100 carousel-img" style="background-image: url({{asset($banners->banners_image)}});">
                        <div class="overlay"></div>
                    </div>
                    <div class="carousel-caption d-none d-md-block">
                        <h3 class="mb-4">{{$banners->banners_title}}</h3>
                        <h2>
                            {{$banners->banners_body}}
                        </h2>
                    </div>
                </div>
                    <?php $i++ ?>
                @endforeach
            </div>
            <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <!-- end slider -->
    <!-- start newest products -->
    <section class="my-5">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                    <h1 class="black-grey">{{trans('website.Newest Products')}}</h1>
                </div>
                <div class="col-12 new-product">
                    <section class="regular slider">
                        @foreach($data['products'] as $products)
                        <div>
                            <div class="card text-center"  data-toggle="modal" data-target=".exampleModal">
                                <div class="img-holder product card-img-top"
                                    style="background-image: url({{asset($products->products_image)}});"></div>
                                <div class="card-body">
                                    <!-- max length is 25 -->
                                    <p class="card-text mb-1">{{$products->products_name}}</p>
                                    <span class="gray bold">{{$products->products_price}} SAR</span>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </section>
                </div>
            </div>
        </div>
    </section>
    <!-- end newest products -->
    <!-- start subscribe -->
    <section class="subscribe p-5 img-cover">
        <div class="subscribe-form text-center p-5 my-5">
            <h3 class="main-color pt-5">{{trans("website.Let's stay in touch")}}</h3>
            <p class="main-color">
                {{trans("website.Let's stay in touch text")}}
            </p>
            <form class="form-inline mt-4" id="subscribesForm" action="test" method="post">
                {{ csrf_field() }}
                <div class="mb-5">
                    <input id="customInput" name="email" type="text" placeholder="{{trans("website.Enter your email address")}}" required class="clearValue">
                </div>
                <button type="submit" class="btn btn-primary mb-5 py-2 px-4 d-btn">{{trans("website.Subscribe")}}</button>
            </form>
        </div>
    </section>
    <!-- end subscribe -->
    <!-- start download -->
    <section class="py-5 custom-bg">
        <div class="container">
            <div class="row text-center">
                <div class="col-12">
                    <h2 class="black-grey">{{trans('website.Download App')}}</h2>
                    <p class="pt-1 main-color">{{trans('website.Download Text')}}</p>
                </div>
                <div class="col-12">
                    <div class="d-flex download">
                        <a href="{{allSetting()[110]->value}}" target="_blank">
                            <div class="img-holder ios mx-2"></div>
                        </a>
                        <a href="{{allSetting()[109]->value}}" target="_blank">
                            <div class="img-holder android mx-2"></div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end download -->

    <!--  start Blogs -->
    @if(count($data['blogs'])>0)
    <section>
        <div class="container my-5">
            <div class="row">
                <div class="col-12 text-center">
                    <h1 class="black-grey mb-4">{{trans('website.Our Blogs')}}</h1>
                </div>
                @foreach($data['blogs'] as $blog)
                <div class="col-md-4 mt-3">
                    <a href="{{url('blog/'.$blog->blog_id)}}" class="link">
                        <div class="card">
                            <div class="img-cover blog-img card-img-top" style="background-image: url({{asset($blog->blog_image)}});">
                            </div>
                            <div class="card-body">
                                <h5 class="card-title main-color">{{$blog->blog_title}}</h5>
                                <span class="card-text">{{$blog->blog_date}}</span>
                                <p class="card-text short-txt main-color mt-2">
                                    {{$blog->blog_description_part}}
                                </p>
                                <div class="d-flex">
                                    <span class="hr-before second-color bold">{{trans('website.Read More')}}</span>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                @endforeach
                @if(count($data['blogs'])>0)
                <div class="col-12 text-center my-4">
                    <button class="btn btn-primary mb-2 d-btn px-5 py-2" onclick="location.href='{{url('blog')}}'">{{trans('website.See More')}}</button>
                </div>
                @endif
            </div>
        </div>
    </section>
    @endif
    <!-- end Blogs -->
    
    <!--start download modal-->
    <!-- Modal -->
    <div class="modal fade exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">    
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
                 <div class="col-12">
                    <h3 class="black-grey text-center">{{trans('website.Download App')}}</h3>
                    <div class="d-flex download">
                        <a href="{{allSetting()[110]->value}}" target="_blank">
                            <div class="img-holder ios mx-2"></div>
                        </a>
                        <a href="{{allSetting()[109]->value}}" target="_blank">
                            <div class="img-holder android mx-2"></div>
                        </a>
                    </div>
                </div>
          </div>
        </div>
      </div>
    </div>
    <!--end download modal-->
@endsection