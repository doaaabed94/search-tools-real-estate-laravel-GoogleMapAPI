@extends('main')

@section('style')
<style>
    .card-body
    {
        padding: 20px 10% 20px 10%; 
    }
</style>

<link rel="stylesheet" href="{{aurl()}}/plugins/select2/css/select2.min.css">
@endsection

@section('content')

<!-- end col -->
<div class="col-lg-12">
        <div class="card m-b-20">
            <div class="card-body">

                <div class="d-flex mb-2">
                    <h4 class="mt-0 header-title m{{getInvDir()}}-auto">  @lang('admin.offerOrders') / @lang('admin.addNew')</h4>
                    <h4 class="mt-0 header-title m{{getDir()}}-auto"> 
                        <a href="{{ route('get.offerOrder.index') }}" class="btn btn-success fontLight">@lang('admin.back')</a> 
                    </h4>
                </div>

                <form id="FormAdd" enctype="multipart/form-data" >
                        <div class="coverLoading"><img src="{{aurl()}}/loader.gif"></div>
                        @csrf
                        
                        <div class="form-group row">
                            <ul id="errorsAdd"></ul>
                        </div>

                        <div class="row">

         <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col text-center">@lang('admin.clientName') (مطلوب)</th>
      <th scope="col">@lang('admin.date_visit')</th>
      <th scope="col">@lang('admin.notes')</th>
      <th scope="col">link</th>

    </tr>
  </thead>
  <tbody>
     @for ($i = 0; $i <= 5; $i++)
    <tr>
      <th scope="row">{{$i}}</th>
      <td><input class="form-control" name="client_name[]" type="text" ></td>
      <td><input class="form-control" name="date_visit[]" type="date" ></td>
      <td> <textarea class="form-control"  name="notes[]"> </textarea></td>
      <td><input class="form-control" name="link[]" type="text" ></td>
    </tr>
     @endfor
  </tbody>
</table>
                
               <style type="text/css">
                   .form-control{
                    margin-top: 5px;
                   }
               </style>  

                        </div>


                        <div class="form-group row">
                            <div class="col-sm-12 text-center">
                                <button class="btn btn-primary fontLight submit-btn"  type="submit">
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

<?php 
    $routeAdd = route('post.OfferOrder.store'); 
    $redirectRoute = route('get.offerOrder.index'); 
?>

@section('script')

<script src="{{aurl()}}/plugins/select2/js/select2.min.js"></script>


<script>
        $(document).ready(function() {
            $('.input-select2').select2({
                @if(getDir() == 'r')
                dir: "rtl"
                @endif
            });
        });

    $(document).ready(function() {

        $('#extra_data').hide().prop('disabled', false);
        $('#make_show_button').show();
        $('#make_hide_button').hide();

    });



    $('#make_hide_button').on('click', function() {
      $('#extra_data').hide().prop('disabled', true);
      $('#make_hide_button').hide();
      $('#make_show_button').show();
  });

    $('#make_show_button').on('click', function() {
      $('#extra_data').show().prop('disabled', false);
      $('#make_show_button').hide();
      $('#make_hide_button').show();

  });
</script>



@include('inc.ajax.store')

@endsection

