@extends('admin.layout')
@section('content')
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1> {{ trans('labels.AddBlog') }} <small>{{ trans('labels.AddBlog') }}...</small> </h1>
    <ol class="breadcrumb">
      <li><a href="{{ URL::to('admin/dashboard/this_month') }}"><i class="fa fa-dashboard"></i> {{ trans('labels.breadcrumb_dashboard') }}</a></li>
      <li><a href="{{ URL::to('admin/blogs')}}"><i class="fa fa-bars"></i> {{ trans('labels.ListingBlogs') }}</a></li>
      <li class="active">{{ trans('labels.AddBlog') }}</li>
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
            <h3 class="box-title">{{ trans('labels.AddBlog') }}</h3>
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

                        <!-- form start -->
                         <div class="box-body">

                            {!! Form::open(array('url' =>'admin/addNewblog', 'method'=>'post', 'class' => 'form-horizontal form-validate', 'enctype'=>'multipart/form-data')) !!} 
                                @foreach($result['languages'] as $languages)
                                <div class="form-group">
                                    <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.title') }}<span style="color:red;">*</span> ({{ $languages->name }})</label>
                                    <div class="col-sm-10 col-md-4">
                                        <input name="blog_title[{{$languages->languages_id}}]" type="text" class="form-control field-validate" id="blogTitle{{$languages->languages_id}}" value="{{old('blog_title.'.$languages->languages_id.'')}}">
                                        <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.BlogTitleExample') }}</span>
                                        <span class="help-block hidden">{{ trans('labels.textRequiredFieldMessage') }}</span>
                                    </div>
                                </div>
                                @endforeach

                                @foreach($result['languages'] as $languages)
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.description_part') }}<span style="color:red;">*</span> ({{ $languages->name }})</label>
                                  <div class="col-sm-10 col-md-4">
                                      <textarea name="blog_description_part[{{$languages->languages_id}}]" type="text" class="form-control field-validate" rows="3" id="blogBody{{$languages->languages_id}}">{{old('blog_description_part.'.$languages->languages_id.'')}}</textarea>
                                      <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.description_part_example') }}</span>
                                      <span class="help-block hidden">{{ trans('labels.textRequiredFieldMessage') }}</span>
                                  </div>
                                </div>
                                @endforeach
                                
                                @foreach($result['languages'] as $languages)
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.description_full') }}<span style="color:red;">*</span> ({{ $languages->name }})</label>
                                  <div class="col-sm-10 col-md-8">
                                      <textarea name="blog_description_full[{{$languages->languages_id}}]" type="text" class="form-control field-validate" id="editor_{{$languages->languages_id}}">{{old('blog_description_full.'.$languages->languages_id.'')}}</textarea>
                                      <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.description_full_example') }}</span>
                                      <span class="help-block hidden">{{ trans('labels.textRequiredFieldMessage') }}</span>
                                  </div>
                                </div>
                                @endforeach
                                
                                <div class="form-group">
                                    <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.customDate') }}<span style="color:red;">*</span></label>
                                    <div class="col-sm-10 col-md-4">
                                        <input name="blog_date" type="date" class="form-control field-validate" id="blogDate" value="{{old('blog_date')}}">
                                        <span class="help-block hidden">{{ trans('labels.textRequiredFieldMessage') }}</span>
                                    </div>
                                </div>

                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Image') }}<span style="color:red;">*</span></label>
                                  <div class="col-sm-10 col-md-8">
                                      <div id="imageselected">
                                        <input type="file" name="blog_image" required oninvalid="this.setCustomValidity('{{ trans('labels.upload must') }}')" oninput="this.setCustomValidity('')">
                                      </div>
                                      <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.UploadBlogImageText') }}</span>
                                  </div>
                                </div>

                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Status') }}</label>
                                  <div class="col-sm-10 col-md-4">
                                      <select class="form-control" name="status">
                                          <option value="1">{{ trans('labels.Active') }}</option>
                                          <option value="0">{{ trans('labels.InActive') }}</option>
                                      </select>
                                      <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                      {{ trans('labels.StatusBlogText') }}</span>
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
        CKEDITOR.replace('editor_{{$languages->languages_id}}', {
			    filebrowserUploadUrl: '{{ route('upload', ['_token' => csrf_token() ]) }}',
          filebrowserUploadMethod: 'form'
		    });

        @endforeach

        //bootstrap WYSIHTML5 - text editor
        $(".textarea").wysihtml5();

    });
</script>
@endsection
