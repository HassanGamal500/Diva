@extends('admin.layout')
@section('content')
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1> {{ trans('labels.editteam') }} <small>{{ trans('labels.editteam') }}...</small> </h1>
    <ol class="breadcrumb">
       <li><a href="{{ URL::to('admin/dashboard/this_month') }}"><i class="fa fa-dashboard"></i> {{ trans('labels.breadcrumb_dashboard') }}</a></li>
      <li><a href="{{ URL::to('admin/teams')}}"><i class="fa fa-bars"></i> {{ trans('labels.ListingTeam') }}</a></li>
      <li class="active">{{ trans('labels.editteam') }}</li>
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
            <h3 class="box-title">{{ trans('labels.editteam') }} </h3>
          </div>

          <!-- /.box-header -->
          <div class="box-body">
            <div class="row">
              <div class="col-xs-12">
              		<div class="box box-info">
                    <br>
                        @if(session()->has('error'))
                            <div class="alert alert-danger alert-dismissible" role="alert">
                              <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                              {{ session()->get('error') }}
                            </div>
                          @endif

                          @if(session()->has('success'))
                            <div class="alert alert-success alert-dismissible" role="alert">
                              <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                              {{ session()->get('success') }}
                            </div>
                          @endif
                        <!-- /.box-header -->
                        <!-- form start -->
                         <div class="box-body">

                            {!! Form::open(array('url' =>'admin/updateteam', 'method'=>'post', 'class' => 'form-horizontal', 'enctype'=>'multipart/form-data')) !!}

                                {!! Form::hidden('id',  $result['teams'][0]->team_id , array('class'=>'form-control', 'id'=>'id')) !!}
                                {!! Form::hidden('oldImage',  $result['teams'][0]->team_image, array('id'=>'oldImage')) !!}
                                
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Name') }}<span style="color:red;">*</span></label>
                                  <div class="col-sm-10 col-md-4">
                                      <input name="team_name" type="text" class="form-control field-validate" id="" value="{{$result['teams'][0]->team_name}}">
                                      <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.Name') }}</span>
                                      <span class="help-block hidden">{{ trans('labels.textRequiredFieldMessage') }}</span>
                                  </div>
                              </div>

                              <div class="form-group">
                                <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.position') }}<span style="color:red;">*</span></label>
                                <div class="col-sm-10 col-md-4">
                                    <input name="team_professional" type="text" class="form-control field-validate" id="" value="{{$result['teams'][0]->team_professional}}">
                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.position') }}</span>
                                    <span class="help-block hidden">{{ trans('labels.textRequiredFieldMessage') }}</span>
                                </div>
                              </div>

                              <div class="form-group">
                                <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.facebookLink') }}<span style="color:red;">*</span></label>
                                <div class="col-sm-10 col-md-4">
                                    <input name="team_facebook" type="text" class="form-control field-validate" id="" value="{{$result['teams'][0]->team_facebook}}">
                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.facebookLinkText') }}</span>
                                    <span class="help-block hidden">{{ trans('labels.textRequiredFieldMessage') }}</span>
                                </div>
                              </div>

                              <div class="form-group">
                                <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.googleLink') }}<span style="color:red;">*</span></label>
                                <div class="col-sm-10 col-md-4">
                                    <input name="team_google" type="text" class="form-control field-validate" id="" value="{{$result['teams'][0]->team_google}}">
                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.googleLinkText') }}</span>
                                    <span class="help-block hidden">{{ trans('labels.textRequiredFieldMessage') }}</span>
                                </div>
                              </div>

                              <div class="form-group">
                                <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Instagram') }}<span style="color:red;">*</span></label>
                                <div class="col-sm-10 col-md-4">
                                    <input name="team_instagram" type="text" class="form-control field-validate" id="" value="{{$result['teams'][0]->team_instagram}}">
                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.InstagramExample') }}</span>
                                    <span class="help-block hidden">{{ trans('labels.textRequiredFieldMessage') }}</span>
                                </div>
                              </div>

                              <div class="form-group">
                                <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.twitterLink') }}<span style="color:red;">*</span></label>
                                <div class="col-sm-10 col-md-4">
                                    <input name="team_twitter" type="text" class="form-control field-validate" id="" value="{{$result['teams'][0]->team_twitter}}">
                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.twitterLinkText') }}</span>
                                    <span class="help-block hidden">{{ trans('labels.textRequiredFieldMessage') }}</span>
                                </div>
                              </div>

                              <div class="form-group">
                                <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.linkedLink') }}<span style="color:red;">*</span></label>
                                <div class="col-sm-10 col-md-4">
                                    <input name="team_linkedin" type="text" class="form-control field-validate" id="" value="{{$result['teams'][0]->team_linkedin}}">
                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.linkedLinkText') }}</span>
                                    <span class="help-block hidden">{{ trans('labels.textRequiredFieldMessage') }}</span>
                                </div>
                              </div>

                              <div class="form-group">
                                <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Image') }}<span style="color:red;">*</span></label>
                                <div class="col-sm-10 col-md-8">
                                    <div id="imageselected">
                                      <input type="file" name="team_image">
                                    </div>
                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.UploadTeamImageText') }}</span>
                                </div>
                              </div>

                              <div class="form-group">
                                <label for="name" class="col-sm-2 col-md-4 control-label"></label>
                                <div class="col-sm-10 col-md-4">
                                    {!! Form::hidden('oldImage', $result['teams'][0]->team_image , array('id'=>'oldImage', 'class'=>'field-validate ')) !!}
                                    <img src="{{asset('images/'.$result['teams'][0]->team_image)}}" alt="" width=" 100px">
                                </div>
                              </div>
                              <div class="form-group">
                                <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Status') }}</label>
                                <div class="col-sm-10 col-md-4">
                                    <select class="form-control" name="status">
                                        <option value="1" @if($result['teams'][0]->status==1) selected @endif>{{ trans('labels.Active') }}</option>
                                        <option value="0" @if($result['teams'][0]->status==0) selected @endif>{{ trans('labels.Inactive') }}</option>
                                    </select>
                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                    {{ trans('labels.StatusTeamText') }}</span>
                                </div>
                              </div>


                              <!-- /.box-body -->
                              <div class="box-footer text-center">
                                <button type="submit" class="btn btn-primary">{{ trans('labels.Submit') }}</button>
                                <a href="{{ URL::to('admin/teams')}}" type="button" class="btn btn-default">{{ trans('labels.back') }}</a>
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
