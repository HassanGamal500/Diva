@extends('admin.layout')
@section('content')
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1> {{ trans('labels.editconstantbanner') }} <small>{{ trans('labels.editconstantbanner') }}...</small> </h1>
    <ol class="breadcrumb">
       <li><a href="{{ URL::to('admin/dashboard/this_month') }}"><i class="fa fa-dashboard"></i> {{ trans('labels.breadcrumb_dashboard') }}</a></li>
      <li><a href="{{ URL::to('admin/constantbanners')}}"><i class="fa fa-bars"></i> {{ trans('labels.ListingConstantBanners') }}</a></li>
      <li class="active">{{ trans('labels.editconstantbanner') }}</li>
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
            <h3 class="box-title">{{ trans('labels.editconstantbanner') }} </h3>
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

                            {!! Form::open(array('url' =>'admin/updateconstantBanner', 'method'=>'post', 'class' => 'form-horizontal', 'enctype'=>'multipart/form-data')) !!}

                                {!! Form::hidden('id',  $result['banners'][0]->banners_id , array('class'=>'form-control', 'id'=>'id')) !!}
                                {!! Form::hidden('oldImage',  $result['banners'][0]->banners_image, array('id'=>'oldImage')) !!}
                                
                                <?php $a = 0;$b = 0;$c = 0;$d = 0;$e = 0; ?>
                                @foreach($result['languages'] as $language)
                                <div class="form-group">
                                    <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.title') }}<span style="color:red;">*</span> ({{ $language->name }})</label>
                                    <div class="col-sm-10 col-md-4">
                                        <input name="banner_title[{{$language->languages_id}}]" type="text" class="form-control field-validate" id="bannerTitle" value="{{$result['banners'][$a]->banners_title}}">
                                        <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.BannerTitleExample') }}</span>
                                        <span class="help-block hidden">{{ trans('labels.textRequiredFieldMessage') }}</span>
                                    </div>
                                </div>
                                <?php $a++ ?>
                                @endforeach

                                @foreach($result['languages'] as $language)
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.body') }}<span style="color:red;">*</span> ({{ $language->name }})</label>
                                  <div class="col-sm-10 col-md-4">
                                      <textarea name="banner_body[{{$language->languages_id}}]" type="text" class="form-control field-validate" rows="4" id="bannerBody">{{$result['banners'][$b]->banners_body}}</textarea>
                                      <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.BannerBodyExample') }}</span>
                                      <span class="help-block hidden">{{ trans('labels.textRequiredFieldMessage') }}</span>
                                  </div>
                                </div>
                                <?php $b++ ?>
                                @endforeach

                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Image') }}<span style="color:red;">*</span></label>
                                  <div class="col-sm-10 col-md-8">
                                      <div id="imageselected">
                                        <input type="file" name="banner_image">
                                      </div>
                                      <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.UploadBannerImageText') }}</span>
                                  </div>
                                </div>
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-4 control-label"></label>
                                  <div class="col-sm-10 col-md-4">
                                      {!! Form::hidden('oldImage', $result['banners'][0]->banners_image , array('id'=>'oldImage', 'class'=>'field-validate ')) !!}
                                      <img src="{{asset('images/'.$result['banners'][0]->banners_image)}}" alt="" width=" 100px">
                                  </div>
                                </div>
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Status') }}</label>
                                  <div class="col-sm-10 col-md-4">
                                      <select class="form-control" name="status">
                                          <option value="1" @if($result['banners'][0]->status==1) selected @endif>{{ trans('labels.Active') }}</option>
                                          <option value="0" @if($result['banners'][0]->status==0) selected @endif>{{ trans('labels.Inactive') }}</option>
                                      </select>
                                      <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                      {{ trans('labels.StatusBannerText') }}</span>
                                  </div>
                                </div>


                              <!-- /.box-body -->
                              <div class="box-footer text-center">
                                <button type="submit" class="btn btn-primary">{{ trans('labels.Submit') }}</button>
                                <a href="{{ URL::to('admin/constantbanners')}}" type="button" class="btn btn-default">{{ trans('labels.back') }}</a>
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
