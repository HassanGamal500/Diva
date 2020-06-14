@extends('admin.layout')
@section('content')
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1> {{ trans('labels.editblog') }} <small>{{ trans('labels.editblog') }}...</small> </h1>
    <ol class="breadcrumb">
       <li><a href="{{ URL::to('admin/dashboard/this_month') }}"><i class="fa fa-dashboard"></i> {{ trans('labels.breadcrumb_dashboard') }}</a></li>
      <li><a href="{{ URL::to('admin/blogs')}}"><i class="fa fa-bars"></i> {{ trans('labels.ListingBlog') }}</a></li>
      <li class="active">{{ trans('labels.editblog') }}</li>
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
            <h3 class="box-title">{{ trans('labels.editblog') }} </h3>
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

                            {!! Form::open(array('url' =>'admin/updateblog', 'method'=>'post', 'class' => 'form-horizontal', 'enctype'=>'multipart/form-data')) !!}

                                {!! Form::hidden('id',  $result['blogs'][0]->blog_id , array('class'=>'form-control', 'id'=>'id')) !!}
                                {!! Form::hidden('oldImage',  $result['blogs'][0]->blog_image, array('id'=>'oldImage')) !!}
                                <?php $a = 0;$b = 0;$c = 0;$d = 0;$e = 0; ?>
                                @foreach($result['languages'] as $language)
                                <div class="form-group">
                                    <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.title') }}<span style="color:red;">*</span> ({{ $language->name }})</label>
                                    <div class="col-sm-10 col-md-4">
                                        <input name="blog_title[{{$language->languages_id}}]" type="text" class="form-control field-validate" id="blogTitle{{$language->languages_id}}" value="{{$result['blogs'][$a]->blog_title}}">
                                        <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.BlogTitleExample') }}</span>
                                        <span class="help-block hidden">{{ trans('labels.textRequiredFieldMessage') }}</span>
                                    </div>
                                </div>
                                <?php $a++ ?>
                                @endforeach

                                @foreach($result['languages'] as $language)
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.description_part') }}<span style="color:red;">*</span> ({{ $language->name }})</label>
                                  <div class="col-sm-10 col-md-4">
                                      <textarea name="blog_description_part[{{$language->languages_id}}]" type="text" class="form-control field-validate" rows="3" id="blogBody{{$language->languages_id}}">{{$result['blogs'][$b]->blog_description_part}}</textarea>
                                      <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.description_part_example') }}</span>
                                      <span class="help-block hidden">{{ trans('labels.textRequiredFieldMessage') }}</span>
                                  </div>
                                </div>
                                <?php $b++ ?>
                                @endforeach

                                @foreach($result['languages'] as $language)
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.description_full') }}<span style="color:red;">*</span> ({{ $language->name }})</label>
                                  <div class="col-sm-10 col-md-8">
                                      <textarea name="blog_description_full[{{$language->languages_id}}]" type="text" class="form-control field-validate" id="editor{{$language->languages_id}}">{{$result['blogs'][$c]->blog_description_full}}</textarea>
                                      <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.description_full_example') }}</span>
                                      <span class="help-block hidden">{{ trans('labels.textRequiredFieldMessage') }}</span>
                                  </div>
                                </div>
                                <?php $c++ ?>
                                @endforeach
                                
                                <div class="form-group">
                                    <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.customDate') }}<span style="color:red;">*</span></label>
                                    <div class="col-sm-10 col-md-4">
                                        <input name="blog_date" type="date" class="form-control field-validate" id="blogDate" value="{{$result['blogs'][0]->blog_date}}">
                                        <span class="help-block hidden">{{ trans('labels.textRequiredFieldMessage') }}</span>
                                    </div>
                                </div>

                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Image') }}<span style="color:red;">*</span></label>
                                  <div class="col-sm-10 col-md-8">
                                      <div id="imageselected">
                                        <input type="file" name="blog_image">
                                      </div>
                                      <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.UploadBlogImageText') }}</span>
                                  </div>
                                </div>
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-4 control-label"></label>
                                  <div class="col-sm-10 col-md-4">
                                      {!! Form::hidden('oldImage', $result['blogs'][0]->blog_image , array('id'=>'oldImage', 'class'=>'field-validate ')) !!}
                                      <img src="{{asset($result['blogs'][0]->blog_image)}}" alt="" width=" 100px">
                                  </div>
                                </div>
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Status') }}</label>
                                  <div class="col-sm-10 col-md-4">
                                      <select class="form-control" name="status">
                                          <option value="1" @if($result['blogs'][0]->status==1) selected @endif>{{ trans('labels.Active') }}</option>
                                          <option value="0" @if($result['blogs'][0]->status==0) selected @endif>{{ trans('labels.Inactive') }}</option>
                                      </select>
                                      <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                      {{ trans('labels.StatusBLogText') }}</span>
                                  </div>
                                </div>


                              <!-- /.box-body -->
                              <div class="box-footer text-center">
                                <button type="submit" class="btn btn-primary">{{ trans('labels.Submit') }}</button>
                                <a href="{{ URL::to('admin/blogs')}}" type="button" class="btn btn-default">{{ trans('labels.back') }}</a>
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
