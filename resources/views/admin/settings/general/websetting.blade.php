@extends('admin.layout')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1> {{ trans('labels.website_settings') }} <small>{{ trans('labels.website_settings') }}...</small> </h1>
            <ol class="breadcrumb">
                <li><a href="{{ URL::to('admin/dashboard/this_month') }}"><i class="fa fa-dashboard"></i> {{ trans('labels.breadcrumb_dashboard') }}</a></li>
                <li class="active">{{ trans('labels.website_settings') }}</li>
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
                            <h3 class="box-title">{{ trans('labels.website_settings') }} </h3>
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
                                                        <span class="sr-only">{{ trans('labels.Setting') }}Error:</span>
                                                        {{ $error }}
                                                    </div>
                                                @endforeach
                                            @endif

                                            {!! Form::open(array('url' =>'admin/updateSetting', 'method'=>'post', 'class' => 'form-horizontal', 'enctype'=>'multipart/form-data')) !!}
                                            <br>

                                            <div class="form-group">
                                                <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.facebookLink') }}</label>
                                                <div class="col-sm-10 col-md-4">
                                                    {!! Form::text($result['settings'][51]->name,  $result['settings'][51]->value, array('class'=>'form-control', 'id'=>$result['settings'][51]->name)) !!}
                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;margin-top: 0;">{{ trans('labels.facebookLinkText') }}</span>
                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.googleLink') }}</label>
                                                <div class="col-sm-10 col-md-4">
                                                    {!! Form::text($result['settings'][52]->name,  $result['settings'][52]->value, array('class'=>'form-control', 'id'=>$result['settings'][52]->name)) !!}
                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;margin-top: 0;">{{ trans('labels.googleLinkText') }}</span>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.twitterLink') }}</label>
                                                <div class="col-sm-10 col-md-4">
                                                    {!! Form::text($result['settings'][53]->name,  $result['settings'][53]->value, array('class'=>'form-control', 'id'=>$result['settings'][53]->name)) !!}
                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;margin-top: 0;">{{ trans('labels.twitterLinkText') }}</span>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.linkedLink') }}</label>
                                                <div class="col-sm-10 col-md-4">
                                                    {!! Form::text($result['settings'][54]->name,  $result['settings'][54]->value, array('class'=>'form-control', 'id'=>$result['settings'][54]->name)) !!}
                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;margin-top: 0;">{{ trans('labels.linkedLinkText') }}</span>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Start Day') }}</label>
                                                <div class="col-sm-10 col-md-4">
                                                    {{-- {!! Form::date($result['settings'][118]->name, $result['settings'][118]->value, array('class'=>'form-control', 'id'=>$result['settings'][10]->name)) !!}<span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;margin-top: 0;"></span> --}}
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
                                                <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.End Day') }}</label>
                                                <div class="col-sm-10 col-md-4">
                                                    {{-- {!! Form::date($result['settings'][119]->name, $result['settings'][119]->value, array('class'=>'form-control', 'id'=>$result['settings'][10]->name)) !!}<span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;margin-top: 0;"></span> --}}
                                                    <select class="form-control" name="{{$result['settings'][120]->name}}" id="{{$result['settings'][120]->name}}">
                                                        <option value="Saturday" @if($result['settings'][120]->value == 'Saturday') ? selected : '' @endif>{{trans('labels.Saturday')}}</option>
                                                        <option value="Sunday" @if($result['settings'][120]->value == 'Sunday') ? selected : '' @endif>{{trans('labels.Sunday')}}</option>
                                                        <option value="Monday" @if($result['settings'][120]->value == 'Monday') ? selected : '' @endif>{{trans('labels.Monday')}}</option>
                                                        <option value="Tuesday" @if($result['settings'][120]->value == 'Tuesday') ? selected : '' @endif>{{trans('labels.Tuesday')}}</option>
                                                        <option value="Wednesday" @if($result['settings'][120]->value == 'Wednesday') ? selected : '' @endif>{{trans('labels.Wednesday')}}</option>
                                                        <option value="Thursday" @if($result['settings'][120]->value == 'Thursday') ? selected : '' @endif>{{trans('labels.Thursday')}}</option>
                                                        <option value="Friday" @if($result['settings'][120]->value == 'Friday') ? selected : '' @endif>{{trans('labels.Friday')}}</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Start Time') }}</label>
                                                <div class="col-sm-10 col-md-4">
                                                    {!! Form::time($result['settings'][121]->name, $result['settings'][121]->value, array('class'=>'form-control', 'id'=>$result['settings'][121]->name)) !!}<span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;margin-top: 0;"></span>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.End Time') }}</label>
                                                <div class="col-sm-10 col-md-4">
                                                    {!! Form::time($result['settings'][122]->name, $result['settings'][122]->value, array('class'=>'form-control', 'id'=>$result['settings'][122]->name)) !!}<span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;margin-top: 0;"></span>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Android App Link') }}</label>
                                                <div class="col-sm-10 col-md-4">
                                                    {!! Form::text($result['settings'][110]->name, $result['settings'][110]->value, array('class'=>'form-control', 'id'=>$result['settings'][110]->name)) !!}
                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;margin-top: 0;">{{ trans('labels.Android App Link') }}</span>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Iphone App Link') }}</label>
                                                <div class="col-sm-10 col-md-4">
                                                    {!! Form::text($result['settings'][111]->name, $result['settings'][111]->value, array('class'=>'form-control', 'id'=>$result['settings'][111]->name)) !!}
                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;margin-top: 0;">{{ trans('labels.Iphone App Link') }}</span>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- /.box-body -->
                                        <div class="box-footer text-center">
                                            <button type="submit" class="btn btn-primary">{{ trans('labels.Submit') }} </button>
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
