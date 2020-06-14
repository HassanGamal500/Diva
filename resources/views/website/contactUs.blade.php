@extends('website.layout')
@section('content')
    <!-- start panner -->
    <div class="jumbotron jumbotron-fluid">
        <div class="container text-center">
            <h2>{{trans('website.Contact Us')}}</h2>
        </div>
    </div>
    <!-- end panner -->

    <!-- start contact -->
    <section class="info">
        <div class="container">
            <div class="row">
                <div class="col-md-4 text-center">
                    <h5 class="grey-txt">
                        <i class="fas fa-map-marker-alt"></i>
                        {{trans('website.Address')}}
                    </h5>
                    <p class="gray">{{allSetting()[4]->value}}</p>
                </div>
                <div class="col-md-4 text-center">
                    <h5 class="grey-txt">
                        <i class="fas fa-history"></i>
                        {{trans('website.Open Hour')}}
                    </h5>
                    <p class="gray">{{trans('labels.'.allSetting()[118]->value)}} - {{trans('labels.'.allSetting()[119]->value)}} : {{allSetting()[120]->value}} - {{allSetting()[121]->value}}</p>
                </div>
                <div class="col-md-4 text-center">
                    <h5 class="grey-txt">
                        <i class="fas fa-phone"></i>
                        {{trans('website.Contact Info')}}
                    </h5>
                    <span class="gray">{{trans('website.Email')}} :</span>
                    <span class="gray">{{allSetting()[3]->value}}</span><br />
                    <span class="gray">{{trans('website.Phone')}} :</span>
                    <span class="gray">{{allSetting()[11]->value}}</span>

                </div>
                <div class="col-12 contact py-5">
                    <div class="card p-4 my-5">
                        <h3 class="mx-auto">{{trans('website.Get In Touch')}}</h3>
                        <form class="shake mt-5" role="form" method="post" id="contactUsForm" action="post" name="contact-form"
                            data-toggle="validator">
                            {{ csrf_field() }}
                            <!-- name -->
                            <div class="form-group label-floating">
                                <label class="control-label" for="emailContact">{{trans('labels.Name')}}</label>
                                <input name="name" class="form-control clearValue" id="emailContact" type="text" 
                                       data-error="Please enter your email address">
                                <div class="help-block with-errors"></div>
                            </div>
                            <!-- phone -->
                            <div class="form-group label-floating">
                                <label class="control-label" for="emailContact">{{trans('labels.Telephone')}}</label>
                                <input name="phone" class="form-control clearValue" id="emailContact" type="tel"
                                       data-error="Please enter your email address">
                                <div class="help-block with-errors"></div>
                            </div>
                            <!-- email -->
                            <div class="form-group label-floating">
                                <label class="control-label" for="emailContact">{{trans('website.Email')}}</label>
                                <input name="email" class="form-control clearValue" id="emailContact" type="text" 
                                    data-error="Please enter your email address">
                                <div class="help-block with-errors"></div>
                            </div>
                            <!-- select -->
                            <div class="form-group label-floating">
                                <label for="exampleFormControlSelect1">{{trans('website.Select Message')}}</label>
                                    <select class="form-control" id="exampleFormControlSelect1" name="type">
                                        <option value="" disabled selected>{{trans('website.Select')}}</option>
                                        <option value="1">{{trans('website.problem')}}</option>
                                        <option value="2">{{trans('website.suggestion')}}</option>
                                    </select>
                            </div>
                            <!-- subject -->
                            <div class="form-group label-floating">
                                <label class="control-label" for="subject">{{trans('website.Subject')}}</label>
                                <input name="subject" class="form-control clearValue" id="subject" type="text" 
                                    data-error="Please enter subject">
                                <div class="help-block with-errors"></div>
                            </div>
                            <!-- message -->
                            <div class="input-icons">
                                <div class="form-group label-floating">
                                    <label class="control-label" for="message">{{trans('website.Message')}}</label>
                                    <textarea name="message"  class="form-control clearValue" rows="3" id="message"></textarea>

                                </div>
                            </div>
                            <!-- submit -->
                            <div class="form-submit mt-5 text-center">
                                <button type="submit" class="btn btn-secondary d-btn px-5"
                                    data-dismiss="modal">{{trans('website.Send')}}</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid px-0">
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d399505.9556928546!2d38.81056938000427!3d21.52016347934775!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x15c3d01fb1137e59%3A0xe059579737b118db!2sJeddah%20Saudi%20Arabia!5e0!3m2!1sen!2seg!4v1582702549968!5m2!1sen!2seg"
                width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
        </div>
    </section>
    <!-- end contact -->
@endsection