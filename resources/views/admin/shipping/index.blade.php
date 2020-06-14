@extends('admin.layout')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1> {{ trans('labels.ShippingMethods') }} <small>{{ trans('labels.ListingAllShippingMethods') }}...</small> </h1>
            <ol class="breadcrumb">
                <li><a href="{{ URL::to('admin/dashboard/this_month') }}"><i class="fa fa-dashboard"></i> {{ trans('labels.breadcrumb_dashboard') }}</a></li>
                <li class=" active">{{ trans('labels.ShippingMethods') }}</li>
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
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="box-tools pull-right">
                                        <a href="{{ URL::to('admin/shippingmethods/add') }}" type="button" class="btn btn-block btn-primary">{{ trans('labels.AddNew') }}</a>
                                    </div>
                                </div>
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
                                            <th>{{ trans('labels.Name') }}</th>
                                            <th>{{ trans('labels.phone') }}</th>
                                            <th>{{ trans('labels.Email') }}</th>
                                            <th>{{ trans('labels.Price') }}</th>
                                            <th>{{ trans('labels.Num Of Orders') }}</th>
                                            <th>{{ trans('labels.Action') }}</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @if(count($shippings)>0)
                                            @foreach ($shippings as $shipping)
                                                <tr>
                                                    <td>{{ $loop->iteration }}</td>
                                                    <td>{{ $shipping->name }}</td>
                                                    <td>{{ $shipping->phone }}</td>
                                                    <td>{{ $shipping->email }}</td>
                                                    <td>{{ $shipping->price }}</td>
                                                    <td>{{ $shipping->numOfOrders }}</td>
                                                    <td>
                                                        <ul class="nav table-nav">
                                                            <li class="dropdown">
                                                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                                                    {{ trans('labels.Action') }} <span class="caret"></span>
                                                                </a>
                                                                <ul class="dropdown-menu">
                                                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="{{ URL::to('admin/shippingmethods/edit/'.$shipping->id)}}">{{ trans('labels.EditShippingMethod') }}</a></li>
                                                                    <li role="presentation" class="divider"></li>
                                                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="{{url('admin/orders/displayShipping') }}/{{$shipping->id}}">{{ trans('labels.orders') }}</a></li>
                                                                    <li role="presentation" class="divider"></li>
                                                                    <li role="presentation"><a data-toggle="tooltip" data-placement="bottom" title="{{ trans('labels.Delete') }}" id="shippingFrom" shipping_id='{{ $shipping->id }}' data-href="{{url('admin/shippingmethods/delete')}}">{{ trans('labels.Delete') }}</a></li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                            @endforeach

                                        @else
                                            <tr>
                                                <td colspan="3">{{ trans('labels.NoRecordFound') }}</td>
                                            </tr>
                                        @endif
                                        </tbody>
                                    </table>
                                    @if($shippings != null)
                                    <div class="col-xs-12 text-right">
                                        {{$shippings->links()}}
                                    </div>
                                    @endif
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

            <!-- deleteBrandModal -->
            <div class="modal fade" id="shippingModal" tabindex="-1" role="dialog" aria-labelledby="deleteShippingMethodModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="deleteShippingMethodModalLabel">{{ trans('labels.DeleteBrand') }}</h4>
                        </div>
                        {!! Form::open(array('url' =>'admin/shippingmethods/delete', 'name'=>'deleteShipping', 'id'=>'deleteShipping', 'method'=>'post', 'class' => 'form-horizontal', 'enctype'=>'multipart/form-data')) !!}
                        {!! Form::hidden('action',  'delete', array('class'=>'form-control')) !!}
                        {!! Form::hidden('shipping_methods_id',  '', array('class'=>'form-control', 'id'=>'shipping_methods_id')) !!}
                        <div class="modal-body">
                            <p>{{ trans('labels.DeleteShippingMethodText') }}</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">{{ trans('labels.Close') }}</button>
                            <button type="submit" class="btn btn-primary">{{ trans('labels.Delete') }}</button>
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
