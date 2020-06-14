@extends('website.layout')
@section('content')

    <!-- start panner -->
    <div class="jumbotron jumbotron-fluid mt-3">
        <div class="container text-center">
            <h2>{{trans('website.My Account')}}</h2>
        </div>
    </div>
    <!-- end panner -->
    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-4 mx- mx-auto">
                    <!-- start account form -->
                    <form class="shake account-form" role="form" method="post" id="accountForm" name="contact-form"
                        data-toggle="validator" enctype="multipart/form-data">
                        @CSRF
                        <div class="form-row">
                            <div class="form-group col-12 mb-5">
                                <div class="avatar-upload">
                                    <div class="avatar-edit">
                                        <input type="file" id="imageUpload" name="image_user" accept=".png, .jpg, .jpeg">
                                        <label for="imageUpload">
                                            <i class="fas fa-pencil-alt"></i>
                                        </label>
                                        
                                    </div>
                                    <div class="avatar-preview">
                                        <div class="img-holder" style="background-image: url({{asset($data['profiles']->image)}});">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group col-md-6 label-floating">
                                <label class="control-label" for="fisrtName">{{trans('website.First Name')}}</label>
                                <input class="form-control" id="fisrtName" name="fisrtName" type="text" value="{{$data['profiles']->first_name}}" required
                                    data-error="Please enter your first name">
                            </div>
                            <div class="form-group col-md-6 label-floating">
                                <label class="control-label" for="lastName">{{trans('website.Last Name')}}</label>
                                <input type="text" id="lastName" name="lastName" class="form-control" value="{{$data['profiles']->last_name}}" required
                                    data-error="Please enter your last name">
                            </div>
                            <div class="form-group col-md-6 label-floating">
                                <label class="control-label" for="email">{{trans('website.Email')}}</label>
                                <input type="email" id="email" name="email" class="form-control" value="{{$data['profiles']->email}}" required
                                    data-error="Please enter your email address">
                            </div>
                            <div class="form-group col-md-6 label-floating">
                                <label class="control-label" for="phone">{{trans('website.Phone Number')}}</label>
                                <input type="tel" id="phone" name="phone" class="form-control" value="{{$data['profiles']->phone}}" pattern="^[0-9]+$" required
                                    data-error="Please enter your phone number">
                            </div>
                            <div class="form-group col-md-6 label-floating">
                                <div class="input-icons">
                                    <label class="control-label" for="pw">{{trans('website.Password')}}</label>
                                    <i class="fa fa-eye icon gray"></i>
                                    <input class="input-field form-control text-left pw" type="password" name="password" required>
                                </div>
                            </div>
                            <div class="form-group col-md-6 label-floating">
                                <div class="input-icons">
                                    <label class="control-label" for="pw">{{trans('website.New Password')}}</label>
                                    <i class="fa fa-eye icon gray"></i>
                                    <input class="input-field form-control text-left pw" name="new_password" type="password">
                                </div>
                            </div>
                            <div class="form-group col-md-6 label-floating">
                                <div class="input-icons">
                                    <label class="control-label" for="pw">{{trans('website.Invite code')}}</label>
                                    <input class="input-field form-control text-left" name="code" type="text" value="{{$data['profiles']->invite_code}}">
                                </div>
                            </div>
                            <div class="form-group col-md-6">
                                <div class="row mt-4">
                                    <div class="col-md-6">
                                        <input class="form-check-input" type="radio" name="gender"
                                            id="inlineRadio1" value="male" @if($data['profiles']->gender == 'male') checked : '' @endif>
                                        <label class="form-check-label" for="inlineRadio1">{{trans('website.Male')}}</label>
                                    </div>
                                    <div class="col-md-6">
                                        <input class="form-check-input" type="radio" name="gender"
                                            id="inlineRadio1" value="female" @if($data['profiles']->gender == 'female') checked : '' @endif>
                                        <label class="form-check-label" for="inlineRadio1">{{trans('website.Female')}}</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- submit -->
                        <div class="form-submit mt-5 text-center">
                            <button type="submit" class="btn btn-secondary d-btn px-5">{{trans('website.Save')}}</button>
                        </div>
                    </form>
                    <!-- end account form -->
                </div>
            </div>
        </div>
    </section>
@endsection