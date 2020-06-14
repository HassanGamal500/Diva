@extends('admin.layout')
@section('content')
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1> {{ trans('labels.blogs') }} <small>{{ trans('labels.ListingBlogs') }}...</small> </h1>
    <ol class="breadcrumb">
       <li><a href="{{ URL::to('admin/dashboard/this_month') }}"><i class="fa fa-dashboard"></i> {{ trans('labels.breadcrumb_dashboard') }}</a></li>
      <li class="active">{{ trans('labels.Blogs') }}</li>
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
            <h3 class="box-title">{{ trans('labels.ListingBlogs') }} </h3>
            <div class="box-tools pull-right">
            	<a href="{{ URL::to('admin/addblog') }}" type="button" class="btn btn-block btn-primary">{{ trans('labels.AddNewBlog') }}</a>
            </div>
          </div>

          <!-- /.box-header -->
          <div class="box-body">
            <div class="row">
              <div class="col-xs-12">
              		  @if (count($errors) > 0)
                          @if($errors->any())
                            <div class="alert alert-success alert-dismissible" role="alert">
                              <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                              {{$errors->first()}}
                            </div>
                          @endif
                      @endif

              </div>
            </div>
            <div class="row">
              <div class="col-xs-12">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th>{{ trans('labels.ID') }}</th>
                      <th>{{ trans('labels.Title') }}</th>
                      <th>{{ trans('labels.Image') }}</th>
                      <th>{{ trans('labels.Action') }}</th>
                    </tr>
                  </thead>
                  <tbody>
                  @if(count($result['blogs'])>0)
                    @foreach ($result['blogs'] as $key=>$blogs)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                      	  	<td>{{ $blogs->blog_title }}</td>
                            <td><img src="{{asset($blogs->blog_image)}}" alt="" width=" 100px"></td>
                            <td>
                              <a data-toggle="tooltip" data-placement="bottom" title="{{ trans('labels.Edit') }}" href="editblog/{{ $blogs->blog_id }}" class="badge bg-light-blue"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                              <a data-toggle="tooltip" data-placement="bottom" title="{{ trans('labels.Delete') }}" id="deleteBlogId" blog_id ="{{ $blogs->blog_id }}" class="badge bg-red"><i class="fa fa-trash" aria-hidden="true"></i></a>
                            </td>
                        </tr>
                    @endforeach
                    @else
                       <tr>
                            <td colspan="4">{{ trans('labels.NoRecordFound') }}</td>
                       </tr>
                    @endif
                  </tbody>
                </table>
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

    <!-- deleteBlogodal -->
	<div class="modal fade" id="deleteBlogModal" tabindex="-1" role="dialog" aria-labelledby="deleteBlogModalLabel">
	  <div class="modal-dialog" role="document">
		<div class="modal-content">
		  <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			<h4 class="modal-title" id="deleteBlogModalLabel">{{ trans('labels.DeleteBlog') }}</h4>
		  </div>
		  {!! Form::open(array('url' =>'admin/deleteblog', 'name'=>'deleteBlog', 'id'=>'deleteBlog', 'method'=>'post', 'class' => 'form-horizontal', 'enctype'=>'multipart/form-data')) !!}
				  {!! Form::hidden('action',  'delete', array('class'=>'form-control')) !!}
				  {!! Form::hidden('blog_id',  '', array('class'=>'form-control', 'id'=>'blog_id')) !!}
		  <div class="modal-body">
			  <p>{{ trans('labels.DeleteBlogText') }}</p>
		  </div>
		  <div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">{{ trans('labels.Close') }}</button>
			<button type="submit" class="btn btn-primary" id="deleteBlog">{{ trans('labels.Delete') }}</button>
		  </div>
		  {!! Form::close() !!}
		</div>
	  </div>
	</div>

    <!-- /.row -->
  </section>
  <!-- /.content -->
</div>
@endsection
