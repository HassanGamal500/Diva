@extends('admin.layout')
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1> {{ trans('labels.EditCustomers') }} <small>{{ trans('labels.EditCurrentCustomers') }}...</small> </h1>
        <ol class="breadcrumb">
            <li><a href="{{ URL::to('admin/dashboard/this_month')}}"><i class="fa fa-dashboard"></i> {{ trans('labels.breadcrumb_dashboard') }}</a></li>
            <li><a href="{{ URL::to('admin/customers/display')}}"><i class="fa fa-users"></i> {{ trans('labels.ListingAllCustomers') }}</a></li>
            <li class="active">{{ trans('labels.EditCustomers') }}</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <!-- Info boxes -->

        <!-- /.row -->

        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">{{ trans('labels.EditCustomers') }} </h3>
                    </div>

                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="box box-info">
                                    <!--<div class="box-header with-border">
                                          <h3 class="box-title">Edit category</h3>
                                        </div>-->
                                    <!-- /.box-header -->
                                    <br>
                                    @if (count($errors) > 0)
                                      @if($errors->any())
                                      <div class="alert alert-danger alert-dismissible" role="alert">
                                          <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                          {{$errors->first()}}
                                      </div>
                                      @endif
                                    @endif


                                    <!-- form start -->
                                    <div class="box-body">

                                        {!! Form::open(array('url' =>'admin/customers/update', 'method'=>'post', 'class' => 'form-horizontal form-validate', 'enctype'=>'multipart/form-data')) !!}
                                        @CSRF
                                        {!! Form::hidden('customers_id', $data['customers']->id, array('class'=>'form-control', 'id'=>'id')) !!}

                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.FirstName') }}* </label>
                                            <div class="col-sm-10 col-md-4">
                                                <input type="text" name="first_name" value="{{$data['customers']->first_name}}" class="form-control field-validate" id="first_name" required oninvalid="this.setCustomValidity('{{ trans('labels.The First Name Is Required') }}')" oninput="this.setCustomValidity('')">
                                                <!--{!! Form::text('first_name', $data['customers']->first_name, array('class'=>'form-control field-validate', 'id'=>'first_name', 'required' => 'required')) !!}-->
                                                <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.FirstNameText') }}</span>
                                                <span class="help-block hidden">{{ trans('labels.textRequiredFieldMessage') }}</span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.LastName') }}*</label>
                                            <div class="col-sm-10 col-md-4">
                                                <input type="text" name="last_name" value="{{$data['customers']->last_name}}" class="form-control field-validate" id="last_name" required oninvalid="this.setCustomValidity('{{ trans('labels.The First Name Is Required') }}')" oninput="this.setCustomValidity('')">
                                                <!--{!! Form::text('last_name', $data['customers']->last_name , array('class'=>'form-control field-validate', 'id'=>'last_name', 'required' => 'required')) !!}-->
                                                <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.lastNameText') }}</span>
                                                <span class="help-block hidden">{{ trans('labels.textRequiredFieldMessage') }}</span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Gender') }}*</label>
                                            <div class="col-sm-10 col-md-4">
                                                <label>
                                                    <input @if($data['customers']->gender == 'male') checked @endif type="radio" name="gender" value="male" class="minimal">
                                                    {{ trans('labels.Male') }}
                                                </label><br>

                                                <label>
                                                    <input @if($data['customers']->gender == 'female') checked @endif type="radio" name="gender" value="female" class="minimal">
                                                    {{ trans('labels.Female') }}
                                                </label>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Image') }} </label>
                                            <div class="col-sm-10 col-md-4">
                                                <input type="file" name="customer_image">
                                                <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.UploadProductImageText') }}</span>
                                            </div>
                                        </div>


                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-4 control-label"></label>
                                            <div class="col-sm-10 col-md-4">
                                                {!! Form::hidden('oldImage', $data['customers']->image , array('id'=>'oldImage', 'class'=>'field-validate ')) !!}
                                                <img src="{{asset($data['customers']->image)}}" alt="" width=" 100px">
                                            </div>
                                        </div>

                                        
                                        <div class="form-group">
                                          <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Telephone') }}</label>
                                          <div class="col-sm-10 col-md-4">
                                              <input type="tel" name="phone" value="{{$data['customers']->phone}}" class="form-control field-validate" id="phone" pattern="^[0-9]+$" required oninvalid="this.setCustomValidity('{{ trans('labels.number phone must contain only numbers') }}')" oninput="this.setCustomValidity('')">
                                            <!--{!! Form::text('phone',  $data['customers']->phone, array('class'=>'form-control', 'id'=>'phone', 'pattern' => '^[0-9]+$', 'required' => 'required')) !!}-->
                                            <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.TelephoneText') }}</span>
                                          </div>
                                        </div>

                                        <!--<div class="form-group">-->
                                        <!--    <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Wallet') }}</label>-->
                                        <!--    <div class="col-sm-10 col-md-4">-->
                                        <!--      {!! Form::text('wallet',  $data['customers']->wallet, array('class'=>'form-control', 'id'=>'wallet')) !!}-->
                                        <!--    </div>-->
                                        <!--</div>-->

                                        <hr>
                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.EmailAddress') }}* </label>
                                            <div class="col-sm-10 col-md-4">
                                                {!! Form::hidden('old_email_address', $data['customers']->email, array('class'=>'form-control', 'id'=>'old_email_address')) !!}
                                                <input type="email" name="email" value="{{$data['customers']->email}}" class="form-control email-validate" id="email" required oninvalid="this.setCustomValidity('{{ trans('labels.EmailText') }}')" oninput="this.setCustomValidity('')">
                                                <!--{!! Form::email('email', $data['customers']->email, array('class'=>'form-control email-validate', 'id'=>'email')) !!}-->
                                                <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;"> {{ trans('labels.EmailText') }}</span>
                                                <span class="help-block hidden"> {{ trans('labels.EmailError') }}</span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.changePassword') }}</label>
                                            <div class="col-sm-10 col-md-4">
                                                {!! Form::checkbox('changePassword', 'yes', null, ['class' => '', 'id'=>'change-passowrd']) !!}
                                            </div>
                                        </div>

                                        <!-- <div class="form-group password_content">-->
                                        <div class="form-group password" style="display: none">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Password') }}*</label>
                                            <div class="col-sm-10 col-md-4">
                                                {!! Form::password('password', array('class'=>'form-control ', 'id'=>'password')) !!}
                                                <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                                    {{ trans('labels.PasswordText') }}</span>
                                                <span class="help-block hidden">{{ trans('labels.textRequiredFieldMessage') }}</span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Status') }}
                                            </label>
                                            <div class="col-sm-10 col-md-4">
                                                <select class="form-control" name="status">
                                                    <option @if($data['customers']->status == 1)
                                                        selected
                                                        @endif
                                                        value="1">{{ trans('labels.Active') }}</option>
                                                    <option @if($data['customers']->status == 0)
                                                        selected
                                                        @endif
                                                        value="0">{{ trans('labels.Inactive') }}</option>
                                                </select><span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.StatusText') }}</span>

                                            </div>
                                        </div>

                                        <!-- /.box-body -->
                                        <div class="box-footer text-center">
                                            <button type="submit" class="btn btn-primary">{{ trans('labels.Submit') }} </button>
                                            <a href="{{ URL::to('admin/customers/display')}}" type="button" class="btn btn-default">{{ trans('labels.back') }}</a>
                                        </div>
                                        <!-- /.box-footer -->
                                        {!! Form::close() !!}
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->

        <!-- Main row -->

        <!-- /.row -->
    </section>
    <!-- /.content -->
</div>
@endsection
