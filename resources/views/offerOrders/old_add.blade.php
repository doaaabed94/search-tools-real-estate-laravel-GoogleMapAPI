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
                            <div class="col-md-6">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">@lang('admin.clientName')</label>
                                    <div class="col-sm-8">
                                        <input class="form-control" name="client_name" type="search" >
                                    </div>
                                </div>
                            </div>

                                   <div class="col-md-6">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">@lang('admin.date_visit')</label>
                                    <div class="col-sm-8">
                                        <input class="form-control" name="date_visit" type="date" >
                                    </div>
                                </div>
                            </div>

                            </div>

                                      <div class="form-group row">
                            <label class="col-sm-2 col-form-label">@lang('admin.notes')</label>
                            <div class="col-sm-10">
                                <textarea class="form-control"  name="notes"></textarea>
                            </div>
                        </div>
  

    <div class="col-md-12">
        <div class="form-group row" >
            
         
            <label class="col-sm-12 col-form-label"> <span id="make_show_button" class="span-show">+  بيانات إضافية  </span>
                <span id="make_hide_button" class="span-show">-  بيانات إضافية  </span></label>
            </div>
        </div>
  
                        <div class="row"  id="extra_data">

                            <div class="col-md-6">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">@lang('admin.propType')</label>
                                    <div class="col-sm-8">
                                      <select class="custom-select" name="prop_type" >
                                        <option value="">@lang('admin.notExist')</option>
                                        <option value="villa">@lang('admin.villa')</option>
                                        <option value="duplex">@lang('admin.duplex')</option>
                                        <option value="land">@lang('admin.land')</option>
                                        <option value="store">@lang('admin.store')</option>
                                        <option value="office">@lang('admin.office')</option>
                                      </select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group row">
                                  <label class="col-sm-4 col-form-label">@lang('admin.region')</label>
                                  <div class="col-sm-8">
                                      <select class="custom-select" name="region_id" >
                                          <option value="">@lang('admin.notExist')</option>
                                          @foreach($regions as $region)
                                              <option value="{{$region->id}}"> {{$region->name .' - '. $region->city->name}} </option>
                                          @endforeach
                                      </select>
                                  </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">@lang('admin.numberOfRooms')</label>
                                    <div class="col-sm-8">
                                        <select class="custom-select" name="number_of_rooms_id" >
                                            <option value="">@lang('admin.notExist')</option>
                                            @foreach($number_of_rooms as $number_of_room)
                                                <option value="{{$number_of_room->id}}"> {{$number_of_room->name}} </option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">@lang('admin.propStatus')</label>
                                    <div class="col-sm-8">
                                      <select class="custom-select" name="prop_status"  >
                                            <option value="">@lang('admin.notExist')</option>
                                            <option value="under_construction">@lang('admin.under_construction')</option>
                                            <option value="ready">@lang('admin.ready')</option>
                                            <option value="ready_in_6_months">@lang('admin.ready_in_6_months')</option>
                                      </select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">@lang('admin.expectedPrice')</label>
                                    <div class="col-sm-8">
                                        <input class="form-control" name="expected_price" type="number" >
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">@lang('admin.payment')</label>
                                    <div class="col-sm-8">
                                        <select class="custom-select" name="payment" >
                                            <option value="">@lang('admin.notExist')</option>
                                            <option value="cash"> @lang('admin.cash') </option>
                                            <option value="install"> @lang('admin.install') </option>
                                            <option value="cash_install"> @lang('admin.cash_install') </option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">@lang('admin.look')</label>
                                    <div class="col-sm-8">
                                        <select class="custom-select" name="look">
                                            <option value="">@lang('admin.notExist')</option>
                                            <option value="sea"> @lang('admin.sea') </option>
                                            <option value="forest"> @lang('admin.forest') </option>
                                            <option value="bosphorus"> @lang('admin.bosphorus') </option>
                                            <option value="city"> @lang('admin.city') </option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">@lang('admin.nationality')</label>
                                    <div class="col-sm-8">
                                        <input class="form-control" name="nationality" type="search" >
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">@lang('admin.interestedInTurkishCitizenship')</label>
                                    <div class="col-sm-8">
                                        <select class="custom-select" name="interested_in_turkish_citizenship" >
                                            <option value="">@lang('admin.notExist')</option>
                                            <option value="yes">@lang('admin.yes')</option>
                                            <option value="no"> @lang('admin.no') </option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">@lang('admin.purposeOfPurchase')</label>
                                    <div class="col-sm-8">
                                        <select class="custom-select" name="purpose_of_purchase" >
                                            <option value="">@lang('admin.notExist')</option>
                                            <option value="investment">@lang('admin.investment')</option>
                                            <option value="residence_investment"> @lang('admin.residence_investment') </option>
                                            <option value="family_house"> @lang('admin.family_house') </option>
                                            <option value="vacationing"> @lang('admin.vacationing') </option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group row">
                                    <label class="col-sm-4 col-form-label">@lang('admin.urgent')</label>
                                    <div class="col-sm-8">
                                        <select class="custom-select" name="urgent" >
                                            <option value="">@lang('admin.notExist')</option>
                                            <option value="yes">@lang('admin.yes12')</option>
                                            <option value="no"> @lang('admin.no') </option>
                                            <option value="normal"> @lang('admin.normal') </option>
                                        </select>
                                    </div>
                                </div>
                            </div>


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
    $redirectRoute = route('get.home.index'); 
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

