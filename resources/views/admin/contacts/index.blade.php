@extends('admin.layout')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1> {{ trans('labels.contacts') }} <small>{{ trans('labels.ListingAllContacts') }}...</small> </h1>
            <ol class="breadcrumb">
                <li><a href="{{ URL::to('admin/dashboard/this_month') }}"><i class="fa fa-dashboard"></i> {{ trans('labels.breadcrumb_dashboard') }}</a></li>
                <li class=" active">{{ trans('labels.Contacts') }}</li>
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
                                            <th>{{ trans('labels.PersonalInfo') }}</th>
                                            <th>{{ trans('labels.Type') }}</th>
                                            <th>{{ trans('labels.subject') }}</th>
                                            <th>{{ trans('labels.message') }}</th>
                                            <th>{{ trans('labels.Action') }}</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @if(count($contacts)>0)
                                            @foreach ($contacts as $contact)
                                                <tr>
                                                    <td>{{ $loop->iteration }}</td>
                                                    <td>
                                                        <strong>{{trans('labels.Name')}}: </strong> {{ $contact->contact_name }} <br>
                                                        <strong>{{trans('labels.Email')}}: </strong> {{ $contact->contact_email }} <br>
                                                        <strong>{{trans('labels.phone')}}: </strong> {{ $contact->contact_phone }} <br>
                                                    </td>
                                                    <td>{{ $contact->contact_type == 1 ? trans('labels.problem') : trans('labels.suggestion') }}</td>
                                                    <td>{{ $contact->contact_subject }}</td>
                                                    <td>{{ $contact->contact_message }}</td>
                                                    <td>
                                                        <a id="contactFrom" contact_id='{{ $contact->contact_id }}' data-toggle="tooltip" data-placement="bottom" title="Delete" data-href="{{url('admin/contacts/delete')}}" class="badge bg-red"><i class="fa fa-trash" aria-hidden="true"></i></a>
                                                    </td>
                                                </tr>
                                            @endforeach
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

            <!-- deleteContactModal -->
            <div class="modal fade" id="contactModal" tabindex="-1" role="dialog" aria-labelledby="deleteContactModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="deleteContactModalLabel">{{ trans('labels.DeleteContact') }}</h4>
                        </div>
                        {!! Form::open(array('url' =>'admin/contacts/delete', 'name'=>'deleteContact', 'id'=>'deleteContact', 'method'=>'post', 'class' => 'form-horizontal', 'enctype'=>'multipart/form-data')) !!}
                        {!! Form::hidden('action',  'delete', array('class'=>'form-control')) !!}
                        {!! Form::hidden('contact_id',  '', array('class'=>'form-control', 'id'=>'contact_id')) !!}
                        <div class="modal-body">
                            <p>{{ trans('labels.DeleteContactText') }}</p>
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
