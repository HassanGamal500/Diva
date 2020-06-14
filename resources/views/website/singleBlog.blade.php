@extends('website.layout')
@section('content')
    <!-- start panner -->
    <div class="jumbotron jumbotron-fluid">
        <div class="container text-center">
            <h2>{{$data['title']}}</h2>
        </div>
    </div>
    <!-- end panner -->

    <!-- start single blog -->
    <section class="single-blog">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="row">
                        <div class="col-md-10">
                            <span class="gray">{{$data['blogs'][0]->blog_date}}</span>
                        </div>
                        <div class="col-md-2">
                            <div class="d-flex">
                                <a href="https://www.facebook.com/sharer/sharer.php?u={{url('blog/'.$data['blogs'][0]->blog_id)}}" target="_blank" class="gray-color">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                                <a href="https://twitter.com/home?status={{url('blog/'.$data['blogs'][0]->blog_id)}}" target="_blank" class="gray-color">
                                    <i class="fab fa-twitter"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="img-cover my-4" style="background-image: url({{asset($data['blogs'][0]->blog_image)}});"></div>
                    <div class="textEditor">
                        <h5 class="second-color">{{$data['blogs'][0]->blog_title}}</h5>
                        <div class="hello">
                            {!! $data['blogs'][0]->blog_description_full !!}
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card p-3">
                        <h5 class="mx-auto">{{trans('website.Popular Blogs')}}</h5>
                        <hr />
                        <div class="scroll px-2">
                            @foreach($data['allBlogs'] as $blog)
                            <a href="{{url('blog/'.$blog->blog_id)}}">
                            <div class="row popular-blogs">
                                <div class="col-md-4 pr-0">
                                    <div class="img-cover my-2" style="background-image: url({{asset($blog->blog_image)}});"></div>
                                </div>
                                <div class="col-md-8">
                                    <span class="gray">{{$blog->blog_date}}</span>
                                    <p class="short-txt">
                                        {{$blog->blog_title}}
                                    </p>
                                </div>
                            </div>
                            @endforeach
                        </div>
                        </a>
                    </div>
                    <div class="card p-5 my-5 text-center">
                        <h2 class="main-color">{{trans("website.Let's stay in touch")}}</h2>
                        <span class="gray">
                           {{trans("website.Let's stay in touch text")}}
                        </span>
                        <form id="subscribesForm" method="post">
                            {{ csrf_field() }}
                            <div>
                                <input type="email" class="subscribe-email my-3 clearValue" aria-describedby="emailHelp"
                                    placeholder="{{trans("website.Enter your email address")}}" name="email" type="email" required>
                            </div>
                            <button type="submit" class="btn btn-primary d-btn">{{trans("website.Subscribe")}}</button>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </section>
    <!-- end single blog -->
@endsection