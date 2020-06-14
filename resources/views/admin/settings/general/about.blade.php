@extends('admin.layout')
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1> {{ trans('labels.aboutUs') }}<small>{{ trans('labels.aboutUs') }}...</small> </h1>
        <ol class="breadcrumb">
            <li><a href="{{ URL::to('admin/dashboard/this_month') }}"><i class="fa fa-dashboard"></i> {{ trans('labels.breadcrumb_dashboard') }}</a></li>
            <li class="active">{{ trans('labels.aboutUs') }}</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">

        <!-- /.row -->
        <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">{{ trans('labels.aboutUs') }}</h3>
                    </div>

                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="box box-info">
                                    <!--<div class="box-header with-border">
                                          <h3 class="box-title">aboutUs</h3>
                                        </div>-->
                                    <!-- /.box-header -->
                                    <!-- form start -->
                                    <div class="box-body">

                                        @if( count($errors) > 0)
                                        @foreach($errors->all() as $error)
                                        <div class="alert alert-success" role="alert">
                                            <span class="icon fa fa-check" aria-hidden="true"></span>
                                            <span class="sr-only">{{ trans('labels.aboutUs') }}:</span>
                                            {{ $error }}</div>
                                        @endforeach
                                        @endif

                                        {!! Form::open(array('url' =>'admin/updateAbout', 'method'=>'post', 'class' => 'form-horizontal', 'enctype'=>'multipart/form-data')) !!}
                                        <h4>{{ trans('labels.aboutUs') }}</h4>
                                        <hr>                               

                                        {!! Form::hidden('id',  $result['about'][0]->about_us_id , array('class'=>'form-control', 'id'=>'id')) !!}
                                        {!! Form::hidden('oldImage',  'images/'.$result['about'][0]->about_image, array('id'=>'oldImage')) !!}
                                        <?php $a = 0;$b = 0;$c = 0;$d = 0;$e = 0; ?>
                                        @foreach($result['languages'] as $language)
                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.description_part') }}<span style="color:red;">*</span> ({{ $language->name }})</label>
                                            <div class="col-sm-10 col-md-4">
                                                <textarea name="about_description_part[{{$language->languages_id}}]" type="text" class="form-control field-validate" rows="4" id="aboutdescription">{{$result['about'][$a]->about_description_part}}</textarea>
                                                <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.AboutDescriptionExample') }}</span>
                                                <span class="help-block hidden">{{ trans('labels.textRequiredFieldMessage') }}</span>
                                            </div>
                                        </div>
                                        <?php $a++ ?>
                                        @endforeach

                                        @foreach($result['languages'] as $language)
                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.description_full') }}<span style="color:red;">*</span> ({{ $language->name }})</label>
                                            <div class="col-sm-10 col-md-8">
                                                <textarea name="about_description_full[{{$language->languages_id}}]" type="text" class="form-control field-validate" id="editor{{$language->languages_id}}">{{$result['about'][$b]->about_description_full}}</textarea>
                                                <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.AboutDescriptionExample') }}</span>
                                                <span class="help-block hidden">{{ trans('labels.textRequiredFieldMessage') }}</span>
                                            </div>
                                        </div>
                                        <?php $b++ ?>
                                        @endforeach

                                        @foreach($result['languages'] as $language)
                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.our_value') }}<span style="color:red;">*</span> ({{ $language->name }})</label>
                                            <div class="col-sm-10 col-md-4">
                                                <textarea name="our_value[{{$language->languages_id}}]" type="text" class="form-control field-validate" rows="4" id="our_value">{{$result['about'][$c]->our_value}}</textarea>
                                                <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.ValueExample') }}</span>
                                                <span class="help-block hidden">{{ trans('labels.textRequiredFieldMessage') }}</span>
                                            </div>
                                        </div>
                                        <?php $c++ ?>
                                        @endforeach

                                        @foreach($result['languages'] as $language)
                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.mission') }}<span style="color:red;">*</span> ({{ $language->name }})</label>
                                            <div class="col-sm-10 col-md-4">
                                                <textarea name="mission[{{$language->languages_id}}]" type="text" class="form-control field-validate" rows="4" id="our_value">{{$result['about'][$d]->mission}}</textarea>
                                                <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.MissionExample') }}</span>
                                                <span class="help-block hidden">{{ trans('labels.textRequiredFieldMessage') }}</span>
                                            </div>
                                        </div>
                                        <?php $d++ ?>
                                        @endforeach

                                        @foreach($result['languages'] as $language)
                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.our_vision') }}<span style="color:red;">*</span> ({{ $language->name }})</label>
                                            <div class="col-sm-10 col-md-4">
                                                <textarea name="our_vision[{{$language->languages_id}}]" type="text" class="form-control field-validate" rows="4" id="our_vision">{{$result['about'][$e]->our_vision}}</textarea>
                                                <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.VisionExample') }}</span>
                                                <span class="help-block hidden">{{ trans('labels.textRequiredFieldMessage') }}</span>
                                            </div>
                                        </div>
                                        <?php $e++ ?>
                                        @endforeach

                                        <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Image') }}<span style="color:red;">*</span></label>
                                            <div class="col-sm-10 col-md-8">
                                                <div id="imageselected">
                                                  <input type="file" name="about_image">
                                                </div>
                                                <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.UploadAboutImageText') }}</span>
                                            </div>
                                          </div>
                                          <div class="form-group">
                                            <label for="name" class="col-sm-2 col-md-4 control-label"></label>
                                            <div class="col-sm-10 col-md-4">
                                                {!! Form::hidden('oldImage', $result['about'][0]->about_image , array('id'=>'oldImage', 'class'=>'field-validate ')) !!}
                                                <img src="{{asset('images/'.$result['about'][0]->about_image)}}" alt="" width=" 100px">
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
<script src="{!! asset('admin/plugins/jQuery/jQuery-2.2.0.min.js') !!}"></script>
<script type="text/javascript">

 //bootstrap WYSIHTML5 - text editor
    $(function() {
  
        // for multiple languages
        @foreach($result['languages'] as $languages)
        // Replace the <textarea id="editor1"> with a CKEditor
        // instance, using default configuration.
        CKEDITOR.replace('editor{{$languages->languages_id}}', {
			    filebrowserUploadUrl: '{{ route('upload', ['_token' => csrf_token() ]) }}',
                filebrowserUploadMethod: 'form'
		    });

        @endforeach

        //bootstrap WYSIHTML5 - text editor
        $(".textarea").wysihtml5();

    });
</script>
@endsection
