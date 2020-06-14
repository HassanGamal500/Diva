@extends('admin.layout')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1> {{ trans('labels.Edit Values') }} <small>{{ trans('labels.Edit Values') }}...</small> </h1>
            <ol class="breadcrumb">
                <li><a href="{{ URL::to("admin/dashboard/this_month")}}"><i class="fa fa-dashboard"></i>{{ trans('labels.Home') }} </a></li>
                <li><a href="{{ URL::to("admin/products/attributes/display")}}"><i class="fa fa-dashboard"></i> {{ trans('labels.ListingOptions') }}</a></li>
                <li class="active">{{ trans('labels.Edit Values') }}</li>
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
                            <h3 class="box-title">{{ trans('labels.Edit Values') }}</h3>
                        </div>

                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="box box-info"><br>
                                        @if (count($errors) > 0)
                                            @if($errors->any())
                                                <div class="alert alert-success alert-dismissible" role="alert">
                                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                    {{$errors->first()}}
                                                </div>
                                            @endif
                                        @endif

                                        <div class="box-body">
                                            {!! Form::open(array('url' =>'admin/products/attributes/options/values/updateSize', 'method'=>'post', 'class' => 'form-horizontal form-validate', 'enctype'=>'multipart/form-data')) !!}
                                            {!! Form::hidden('products_options_values_id', $result['editoptions'][0]->products_options_values_id , array('class'=>'form-control', 'id'=>'products_options_values_id')) !!}

                                            <div class="form-group">
                                                <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Size') }} </label>
                                                <div class="col-sm-10 col-md-4">
                                                <input type="text" name="size" class="form-control field-validate" value="{{$result['editoptions'][0]->products_options_values_size}}" required>
                                                </div>
                                            </div>
                                        <!-- /.box-body -->
                                            <div class="box-footer text-center">
                                                <button type="submit" class="btn btn-primary">{{ trans('labels.Submit') }}</button>
                                                <a href="{{ URL::to("admin/products/attributes/options/values/displaySize/".$result['editoptions'][0]->products_options_id)}}" type="button" class="btn btn-default">{{ trans('labels.back') }}</a>
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
