@extends('website.layout')
@section('content')
    <!-- start panner -->
    <div class="jumbotron jumbotron-fluid">
        <div class="container text-center">
            <h2>{{trans('website.Our Blogs')}}</h2>
        </div>
    </div>
    <!-- end panner -->

    <!-- start blogs -->
    <section>
        <div class="container">
            <div class="row">
                @foreach($data['blogs'] as $blog)
                <div class="col-lg-4 col-md-6 col-12 mt-4">
                    <a href="blog/{{$blog->blog_id}}" class="link">
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
            </div>

            <div class="row mt-4">
                <div class="col-12 text-center">
                    {{ $data['blogs']->render() }}
                </div>
            </div>
        </div>
    </section>
    <!-- end blogs -->
@endsection