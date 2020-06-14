@extends('admin.layout')

@section('content')

    <div class="content-wrapper">

        <!-- Content Header (Page header) -->

        <section class="content-header">

            <h1> {{ trans('labels.Options Value') }} <small>{{ trans('labels.Options Value') }}...</small> </h1>
            <ol class="breadcrumb">
                <li><a href="{{ URL::to('admin/dashboard/this_month')}}"><i class="fa fa-dashboard"></i> {{ trans('labels.breadcrumb_dashboard') }}</a></li>
                <li class="active">{{ trans('labels.Options Value') }}</li>
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
                            <h3 class="box-title"> {{ trans('labels.Options Value for') }} @foreach($result['options'] as $key=>$option) <strong>{{$option->options_name}}</strong> @if(count($result['options']) != $key+1)<span> / </span> @endif  @endforeach</h3>
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
                                <div class="col-md-6">
                                    {!! Form::open(array('url' =>'admin/products/attributes/options/values/insertSize', 'method'=>'post', 'class' => 'form-horizontal form-validate', 'enctype'=>'multipart/form-data')) !!}
                                    {!! Form::hidden('products_options_id', $result['options'][0]->products_options_id , array('class'=>'form-control', 'id'=>'products_options_values_id')) !!}

                                    <h4>{{ trans('labels.Add Option Value') }}</h4>

                                    <div class="form-group">
                                        <label for="name" class="col-sm-2 col-md-4 control-label">{{ trans('labels.Size') }} </label>
                                        <div class="col-sm-10 col-md-8">
                                            <input type="text" name="size" class="form-control field-validate" required>
                                        </div>
                                    </div>

                                    <div class="">
                                        <a href="{{ URL::to('admin/products/attributes/display')}}" type="button" class="btn btn-default pull-left"><i class="fa fa-angle-left"></i> {{ trans('labels.attributes') }}</a>
                                        <button type="submit" class="btn btn-primary pull-right">{{ trans('labels.Add Values') }}</button>
                                    </div>

                                    <!-- /.box-footer -->
                                    {!! Form::close() !!}

                                </div>
                                <div class="col-md-6">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                            <th>{{ trans('labels.ID') }}</th>
                                            <th>{{ trans('labels.Values') }}</th>
                                            <th>{{ trans('labels.Action') }}</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @if(count($result['content'])>0)
                                            @foreach($result['content'] as $data)

                                                <tr id="tr_parent_{{$data->products_options_values_id}}">
                                                    <td>{{$data->products_options_values_id}}</td>
                                                    <td dir="ltr">
                                                        <strong>{{ trans('labels.Size') }} : </strong>{{$data->products_options_values_size}}
                                                    </td>
                                                    <td><a data-toggle="tooltip" data-placement="bottom" title="" href="{{ URL::to('admin/products/attributes/options/values/editSize')}}/{{$data->products_options_values_id}}" class="badge bg-light-blue" data-original-title="Edit"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                                                        <a href="javascript:void(0)" value_id="{{$data->products_options_values_id}}" option_id="{{$result['options'][0]->products_options_id}}" data-toggle="tooltip" data-placement="bottom" title="" class="badge bg-red delete-value" data-original-title="Delete Value"><i class="fa fa-trash" aria-hidden="true"></i></a>
                                                    </td>
                                                </tr>

                                            @endforeach
                                        @endif
                                        </tbody>

                                    </table>

                                    <div class="col-xs-12 text-right">


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

            <div class="modal fade" id="productListModalValue" tabindex="-1" role="dialog" aria-labelledby="productListModalValueLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="productListModalValueLabel">{{ trans('labels.AssociatedProducts') }}</h4>
                        </div>
                        <div class="modal-body">
                            <p><strong>{{ trans('labels.DeletingValueErrorMessage') }}</strong></p>
                            <ul style="padding:0" id="assciate-products-value">
                            </ul>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">{{ trans('labels.Ok') }}</button>
                        </div>
                    </div>
                </div>
            </div>



            <!-- deleteattributeModal -->

            <div class="modal fade" id="deleteValueModal" tabindex="-1" role="dialog" aria-labelledby="deleteValueModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="deleteValueModalLabel">{{ trans('labels.DeleteValue') }}</h4>
                        </div>
                        {!! Form::open(array('url' =>'admin/products/attributes/options/values/delete', 'name'=>'deleteValue', 'id'=>'deleteValue', 'method'=>'post', 'class' => 'form-horizontal', 'enctype'=>'multipart/form-data')) !!}
                        {!! Form::hidden('action',  'delete', array('class'=>'form-control')) !!}
                        {!! Form::hidden('value_id',  '', array('class'=>'form-control', 'id'=>'value_id')) !!}
                        {!! Form::hidden('delete_language_id', '' , array('class'=>'form-control', 'id'=>'delete_language_id')) !!}
                        <div class="modal-body">
                            <p>{{ trans('labels.DeleteValuePrompt') }}</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">{{ trans('labels.Close') }}</button>
                            <button type="button" class="btn btn-primary" id="deleteAttribute">{{ trans('labels.DeleteValue') }}</button>
                        </div>
                        {!! Form::close() !!}
                    </div>

                </div>

            </div>
            <!-- Main row -->
            <!-- /.row -->
        </section>
        <!-- /.content -->

    </div>

@endsection
