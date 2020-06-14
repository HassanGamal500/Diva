@extends('website.layout')
@section('content')
    <div class="jumbotron jumbotron-fluid">
        <div class="container text-center">
            <h2>{{$data['title']}}</h2>
        </div>
    </div>
    <!-- end panner -->

    <!-- start terms -->
    <section>
        <div class="container pb-4">
            <div class="row">
                <div class="col-12">
                    <div>
                        {!! $data['pages'][0]->description !!}
                    </div>
                </div>
            </div>

        </div>
    </section>
    <!-- end terms -->
@endsection