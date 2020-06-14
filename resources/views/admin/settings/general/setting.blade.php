@extends('admin.layout')
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1> {{ trans('labels.Setting') }}<small>{{ trans('labels.Setting') }}...</small> </h1>
        <ol class="breadcrumb">
            <li><a href="{{ URL::to('admin/dashboard/this_month') }}"><i class="fa fa-dashboard"></i> {{ trans('labels.breadcrumb_dashboard') }}</a></li>
            <li class="active">{{ trans('labels.Setting') }}</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">

        <!-- /.row -->
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">{{ trans('labels.Setting') }}</h3>
                    </div>

                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="box box-info">
                                    <!--<div class="box-header with-border">
                                          <h3 class="box-title">Setting</h3>
                                        </div>-->
                                    <!-- /.box-header -->
                                    <!-- form start -->
                                    <div class="box-body">
                                        @if( count($errors) > 0)
                                        @foreach($errors->all() as $error)
                                        <div class="alert alert-success" role="alert">
                                            <span class="icon fa fa-check" aria-hidden="true"></span>
                                            <span class="sr-only">{{ trans('labels.Setting') }}:</span>
                                            {{ $error }}</div>
                                        @endforeach
                                        @endif

                                        {!! Form::open(array('url' =>'admin/updateSetting', 'method'=>'post', 'class' => 'form-horizontal', 'enctype'=>'multipart/form-data')) !!}
                                        <h4>{{ trans('labels.generalSetting') }}</h4>
                                        <hr>                               

                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.website Link') }}</label>
                                            <div class="col-sm-10 col-md-4">
                                                {!! Form::text($result['settings'][102]->name, $result['settings'][102]->value, array('class'=>'form-control', 'id'=>$result['settings'][102]->name)) !!}
                                                <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;margin-top: 0;">{{ trans('labels.Website Link Text') }}</span>
                                            </div>
                                        </div>

                                        @if($result['settings'][66]->value==1 )
                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Android App Link') }}</label>
                                            <div class="col-sm-10 col-md-4">
                                                {!! Form::text($result['settings'][109]->name, $result['settings'][109]->value, array('class'=>'form-control', 'id'=>$result['settings'][109]->name)) !!}
                                                <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;margin-top: 0;">{{ trans('labels.Android App Link') }}</span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Iphone App Link') }}</label>
                                            <div class="col-sm-10 col-md-4">
                                                {!! Form::text($result['settings'][110]->name, $result['settings'][110]->value, array('class'=>'form-control', 'id'=>$result['settings'][110]->name)) !!}
                                                <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;margin-top: 0;">{{ trans('labels.Iphone App Link') }}</span>
                                            </div>
                                        </div>
                                        @endif
                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.AppName') }}</label>
                                            <div class="col-sm-10 col-md-4">
                                                {!! Form::text($result['settings'][18]->name, $result['settings'][18]->value, array('class'=>'form-control', 'id'=>$result['settings'][18]->name)) !!}<span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;margin-top: 0;">{{ trans('labels.AppNameText') }}</span>
                                            </div>
                                        </div>

                                        <hr>
                                        <h4>{{ trans('labels.InqueryEmails') }}</h4>
                                        <hr>

                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.ContactUsEmail') }}</label>
                                            <div class="col-sm-10 col-md-4">
                                                {!! Form::text($result['settings'][3]->name, $result['settings'][3]->value, array('class'=>'form-control', 'id'=>$result['settings'][3]->name)) !!}<span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;margin-top: 0;">
                                                    {{ trans('labels.ContactUsEmailText') }}</span>
                                            </div>
                                        </div>

                                        <hr>
                                        <h4>{{ trans('labels.OurInfo') }}</h4>
                                        <hr>

                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.PhoneNumber') }}</label>
                                            <div class="col-sm-10 col-md-4">
                                                {!! Form::text($result['settings'][11]->name, $result['settings'][11]->value, array('class'=>'form-control', 'id'=>$result['settings'][11]->name)) !!}<span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;margin-top: 0;">
                                                    {{ trans('labels.PhoneNumberText') }}</span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Address') }}</label>
                                            <div class="col-sm-10 col-md-4">
                                                {!! Form::text($result['settings'][4]->name, $result['settings'][4]->value, array('class'=>'form-control', 'id'=>$result['settings'][4]->name)) !!}<span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;margin-top: 0;">{{ trans('labels.AddressText') }}</span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.City') }}</label>
                                            <div class="col-sm-10 col-md-4">
                                                {!! Form::text($result['settings'][5]->name, $result['settings'][5]->value, array('class'=>'form-control', 'id'=>$result['settings'][5]->name)) !!}<span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;margin-top: 0;">{{ trans('labels.CityText') }}</span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.State') }}</label>
                                            <div class="col-sm-10 col-md-4">
                                                {!! Form::text($result['settings'][6]->name, $result['settings'][6]->value, array('class'=>'form-control', 'id'=>$result['settings'][6]->name)) !!}<span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;margin-top: 0;">{{ trans('labels.StateText') }}</span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Zip') }}</label>
                                            <div class="col-sm-10 col-md-4">
                                                {!! Form::text($result['settings'][7]->name, $result['settings'][7]->value, array('class'=>'form-control', 'id'=>$result['settings'][7]->name)) !!}<span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;margin-top: 0;">{{ trans('labels.ZipText') }}</span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Country') }}</label>
                                            <div class="col-sm-10 col-md-4">
                                                {!! Form::text($result['settings'][8]->name, $result['settings'][8]->value, array('class'=>'form-control', 'id'=>$result['settings'][8]->name)) !!}<span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;margin-top: 0;">{{ trans('labels.CountryContactUs') }}</span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Latitude') }}</label>
                                            <div class="col-sm-10 col-md-4">
                                                {!! Form::text($result['settings'][9]->name, $result['settings'][9]->value, array('class'=>'form-control', 'id'=>$result['settings'][9]->name)) !!}<span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;margin-top: 0;">{{ trans('labels.latitudeText') }}</span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Longitude') }}</label>
                                            <div class="col-sm-10 col-md-4">
                                                {!! Form::text($result['settings'][10]->name, $result['settings'][10]->value, array('class'=>'form-control', 'id'=>$result['settings'][10]->name)) !!}<span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;margin-top: 0;">{{ trans('labels.LongitudeText') }}</span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Start Day') }}</label>
                                            <div class="col-sm-10 col-md-4">
                                                {{-- {!! Form::date($result['settings'][118]->name, $result['settings'][118]->value, array('class'=>'form-control', 'id'=>$result['settings'][10]->name)) !!}<span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;margin-top: 0;"></span> --}}
                                                <select class="form-control" name="{{$result['settings'][118]->name}}" id="{{$result['settings'][118]->name}}">
                                                    <option value="Saturday" @if($result['settings'][118]->value == 'Saturday') ? selected : '' @endif>{{trans('labels.Saturday')}}</option>
                                                    <option value="Sunday" @if($result['settings'][118]->value == 'Sunday') ? selected : '' @endif>{{trans('labels.Sunday')}}</option>
                                                    <option value="Monday" @if($result['settings'][118]->value == 'Monday') ? selected : '' @endif>{{trans('labels.Monday')}}</option>
                                                    <option value="Tuesday" @if($result['settings'][118]->value == 'Tuesday') ? selected : '' @endif>{{trans('labels.Tuesday')}}</option>
                                                    <option value="Wednesday" @if($result['settings'][118]->value == 'Wednesday') ? selected : '' @endif>{{trans('labels.Wednesday')}}</option>
                                                    <option value="Thursday" @if($result['settings'][118]->value == 'Thursday') ? selected : '' @endif>{{trans('labels.Thursday')}}</option>
                                                    <option value="Friday" @if($result['settings'][118]->value == 'Friday') ? selected : '' @endif>{{trans('labels.Friday')}}</option>
                                                </select>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.End Day') }}</label>
                                            <div class="col-sm-10 col-md-4">
                                                {{-- {!! Form::date($result['settings'][119]->name, $result['settings'][119]->value, array('class'=>'form-control', 'id'=>$result['settings'][10]->name)) !!}<span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;margin-top: 0;"></span> --}}
                                                <select class="form-control" name="{{$result['settings'][119]->name}}" id="{{$result['settings'][119]->name}}">
                                                    <option value="Saturday" @if($result['settings'][119]->value == 'Saturday') ? selected : '' @endif>{{trans('labels.Saturday')}}</option>
                                                    <option value="Sunday" @if($result['settings'][119]->value == 'Sunday') ? selected : '' @endif>{{trans('labels.Sunday')}}</option>
                                                    <option value="Monday" @if($result['settings'][119]->value == 'Monday') ? selected : '' @endif>{{trans('labels.Monday')}}</option>
                                                    <option value="Tuesday" @if($result['settings'][119]->value == 'Tuesday') ? selected : '' @endif>{{trans('labels.Tuesday')}}</option>
                                                    <option value="Wednesday" @if($result['settings'][119]->value == 'Wednesday') ? selected : '' @endif>{{trans('labels.Wednesday')}}</option>
                                                    <option value="Thursday" @if($result['settings'][119]->value == 'Thursday') ? selected : '' @endif>{{trans('labels.Thursday')}}</option>
                                                    <option value="Friday" @if($result['settings'][119]->value == 'Friday') ? selected : '' @endif>{{trans('labels.Friday')}}</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Start Time') }}</label>
                                            <div class="col-sm-10 col-md-4">
                                                {!! Form::time($result['settings'][120]->name, $result['settings'][120]->value, array('class'=>'form-control', 'id'=>$result['settings'][10]->name)) !!}<span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;margin-top: 0;"></span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.End Time') }}</label>
                                            <div class="col-sm-10 col-md-4">
                                                {!! Form::time($result['settings'][121]->name, $result['settings'][121]->value, array('class'=>'form-control', 'id'=>$result['settings'][10]->name)) !!}<span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;margin-top: 0;"></span>
                                            </div>
                                        </div>

                                    </div>



                                    <!-- /.box-body -->
                                    <div class="box-footer text-center">
                                        <button type="submit" class="btn btn-primary">{{ trans('labels.Submit') }}</button>
                                        <a href="{{ URL::to('admin/dashboard/this_month')}}" type="button" class="btn btn-default">{{ trans('labels.back') }}</a>
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

        <!-- /.row -->

        <!-- Main row -->

        <!-- /.row -->
    </section>
    <!-- /.content -->
</div>
@endsection
