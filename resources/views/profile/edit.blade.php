@extends('main')

@section('style')
<style>
    .card-body
    {
        padding: 20px 10% 20px 10%; 
    }
</style>
@endsection

@section('content')

<!-- end col -->
<div class="col-lg-12">
        <div class="card m-b-20">
            <div class="card-body">

                <form id="FormEdit" enctype="multipart/form-data" >
                        <div class="coverLoading"><img src="{{aurl()}}/loader.gif"></div>
                        @csrf
                        @method('PUT')
                        
                        <div class="form-group row">
                            <ul id="errorsEdit"></ul>
                        </div>
                        <div class="form-group row">
                            <label for="" class="col-sm-2 col-form-label">@lang('admin.name')</label>
                            <div class="col-sm-10">
                                <input class="form-control" value="{{$row->name}}" name="name" type="search" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="" class="col-sm-2 col-form-label">@lang('admin.email')</label>
                            <div class="col-sm-10">
                                <input class="form-control" value="{{$row->email}}" name="email" type="email" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="" class="col-sm-2 col-form-label">@lang('admin.password')</label>
                            <div class="col-sm-10">
                                <input class="form-control" name="password" type="password">
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-12 text-center">
                                <button class="btn btn-primary fontLight submit-btn"  type="submit"  >
                                        @lang('admin.save')
                                </button>
                            </div>
                        </div>
                </form>
                
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->


@endsection

<?php $routeEdit = route('put.profile.update'); ?>
@section('script')

@include('inc.ajax.update')

@endsection