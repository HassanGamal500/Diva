@extends('website.layout')
@section('content')
    <!-- start panner -->
    <div class="jumbotron jumbotron-fluid">
        <div class="container text-center">
            <h2>{{$data['title']}}</h2>
        </div>
    </div>
    <!-- end panner -->

    <!-- start faq -->
    <section class="my-5 faq">
        <div class="container py-5">
            <div class="row">
                <div class="col-md-8">
                    <ul id="accordion" class="col-sm-12 faq-part grey-txt">
                        <?php $i=0; ?>
                        @foreach($data['faqs'] as $faq)
                        <!-- Question one -->
                        <li @if($i!=0) class="mt-1" @endif>
                            <div class="panel-heading" data-toggle="collapse" data-target="#collapse{{$i}}"
                                aria-expanded="@if($i==0) true @else false  @endif" aria-controls="collapse{{$i}}">
                                <div class="px-3 py-2 question-header">
                                    <i class="question">
                                        {{$faq->faq_question}}
                                    </i>
                                    <span class="fa fa-plus fa-1x float-right"></span>
                                </div>
                                <div id="collapse{{$i}}" class="collapse @if($i==0) show @endif" aria-labelledby="heading{{$i++}}"
                                    data-parent="#accordion">
                                    <div class="card-body">
                                        {!! $faq->faq_answer !!}
                                    </div>
                                </div>
                            </div>
                        </li>
                        @endforeach
                    </ul>
                </div>
                <div class="col-md-4">
                    <div class="contact-box info px-4 py-5 text-center">
                        <h5>
                            <i class="fas fa-phone mx-2"></i>
                            {{trans('website.Contact Info')}}
                        </h5>
                        <span>{{trans('website.Email')}} :</span>
                        <span>{{allSetting()[3]->value}}</span><br />
                        <span>{{trans('website.Phone')}} :</span>
                        <span>{{allSetting()[11]->value}}</span>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end faq -->
@endsection