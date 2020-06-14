@extends('website.layout')
@section('content')
    <!-- start panner -->
    <div class="jumbotron jumbotron-fluid">
        <div class="container text-center">
            <h2>{{trans('website.About Us')}}</h2>
        </div>
    </div>
    <!-- end panner -->

    <!-- start about us -->
    <section class="about py-4">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h4 class="second-color">
                        {{trans('website.About Us t')}}
                    </h4>
                </div>
                <div class="col-md-7">
                    <p class="grey-txt">
                        {!! aboutUs()[0]->about_description_full !!}
                    </p>
                </div>
                <div class="col-md-5">
                    <div class="img-holder about-img" style="background-image: url({{asset(aboutUs()[0]->about_image)}});"></div>
                </div>
            </div>
        </div>
    </section>
    <section class="custom-bg py-4">
                    <!-- start goals section -->
                    <div class="container">
                                    <div class="row pt-5">
                <div class="col-md-4 mt-4">
                    <div class="card p-4 text-center card-hover">
                        <div class="img-holder goals mb-3 diamond" style="background-image: url({{asset('website/img/diamond.png')}});">
                        </div>
                        <div class="img-holder goals mb-3 goal-icon" style="background-image: url({{asset('website/img/product.png')}});">
                        </div>
                        <h3 class="grey-txt">{{trans('website.Our Value')}}</h3>
                        <!-- max num of letters 224 -->
                        <p class="gray">
                            {{aboutUs()[0]->our_value}}
                        </p>
                    </div>
                </div>
                <div class="col-md-4 mt-4">
                    <div class="card p-4 text-center card-hover">
                        <div class="img-holder goals mb-3 diamond" style="background-image: url({{asset('website/img/diamond.png')}});">
                        </div>
                        <div class="img-holder goals mb-3 goal-icon" style="background-image: url({{asset('website/img/target.png')}});">
                        </div>
                        <h3 class="grey-txt">{{trans('website.Our Mission')}}</h3>
                        <!-- max num of letters 224 -->
                        <p class="gray">
                            {{aboutUs()[0]->mission}}
                        </p>
                    </div>
                </div>
                <div class="col-md-4 mt-4">
                    <div class="card p-4 text-center card-hover">
                        <div class="img-holder goals mb-3 diamond" style="background-image: url({{asset('website/img/diamond.png')}});">
                        </div>
                        <div class="img-holder goals mb-3 goal-icon" style="background-image: url({{asset('website/img/eye.png')}});"></div>
                        <h3 class="grey-txt">{{trans('website.Our Vision')}}</h3>
                        <!-- max num of letters 224 -->
                        <p class="gray">
                            {{aboutUs()[0]->our_vision}}
                        </p>
                    </div>
                </div>
            </div>
                    </div>

            <!-- end goals section -->
    </section>
    <section>
        <div class="container">
                        <!-- start team section -->
            @if(count($data['teams'])>0)
            <div class="row mt-5">
                <div class="col-12 text-center">
                    <h2 class="py-5">{{trans('website.Meet Our Team')}}</h2>
                </div>
                <div class="col-12">
                    <section class="regular-team slider">
                        @foreach($data['teams'] as $team)
                        <div>
                            <div class="card text-center member-data py-5">
                                <div class="img-holder member-img card-img-top mx-auto"
                                    style="background-image: url({{asset($team->team_image)}});">
                                </div>
                                <div class="card-body">
                                    <h5 class="grey-txt bold">{{$team->team_name}}</h5>
                                    <span class="gray large-font">{{$team->team_professional}}</span>
                                    <div class="d-flex mt-4">
                                        <a href="{{$team->team_facebook}}" target="_blank" class="gray">
                                            <div class="round-icon">
                                                <i class="fab fa-facebook-f"></i>
                                            </div>
                                        </a>
                                        <a href="{{$team->team_twitter}}" target="_blank" class="gray">
                                            <div class="round-icon">
                                                <i class="fab fa-twitter"></i>
                                            </div>
                                        </a>
                                        <a href="{{$team->team_linkedin}}" target="_blank" class="gray">
                                            <div class="round-icon">
                                                <i class="fab fa-linkedin-in"></i>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </section>
                </div>
            </div>
            @endif
            <!-- end team section -->
        </div>
    </section>
                        <!-- start partners -->
            @if(count($data['partners'])>0)

                    <section class="regular-partner slider custom-bg py-5">
                        @foreach($data['partners'] as $partner)
                        <div>
                            <div class="img-holder partner mx-auto" style="background-image: url({{asset($partner->partner_image)}});"></div>
                        </div>
                        @endforeach
                    </section>

            @endif
            <!-- end partners -->
            

    <!-- end about us -->
@endsection