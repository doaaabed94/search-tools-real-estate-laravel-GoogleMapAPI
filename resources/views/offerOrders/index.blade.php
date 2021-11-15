@extends('main')

@section('content')

 
    <!-- end col -->
    <div class="col-lg-12">
        <div class="card m-b-20">
            <div class="card-body">
                <div class="d-flex mb-2">
                    <h4 class="mt-0 header-title m{{getInvDir()}}-auto">  @lang('admin.offerOrders')  </h4>
                </div>
                
                <div class="table-responsive">
                    <div id="coverloadingTable">
                        <img src="{{aurl()}}/loader.gif">
                    </div>
                    <table class="table table-bordered mb-0">
                        <thead>
                            <tr>
                                <th>#</th>
                                {!!create_th(trans('admin.responsible'))!!}
                                {!!create_th(trans('admin.clientName'))!!}
                                {!!create_th(trans('admin.date_visit'))!!}
                                {!!create_th(trans('admin.notes'))!!}

                                {!!create_th(trans('admin.link'))!!}

                                {!!create_th(trans('admin.createdAt'))!!}
                                {!!create_th(trans('admin.updatedAt'))!!}
                                <th>@lang('admin.actions')</th>
                            </tr>
                        </thead>
                        <tbody>

                            @if(count($rows) > 0)

                            @foreach($rows as $row)
                            <tr>
                                <th scope="row">
                                {{ ($rows ->currentpage()-1) * $rows ->perpage() + $loop->index + 1 }}
                                </th>

                                {!!create_td($row->responsible->name)!!}

                                {!!create_td($row->client_name)!!}
                                
                                {!!create_td($row->date_visit)!!}
                                 <td style="width: 30%;">{{$row->notes}}</td>

                                @if($row->link !== null)
                                <td> <a href="{{$row->link}}" target="_blank">رابط العميل</a> 
                                @else

                                <td></td>
                                @endif
                                {!!create_td($row->created_at)!!}

                                {!!create_td($row->updated_at)!!}

                                <td class="text-center">
                                    <?php
                                        $look = '';
                                        $prop_type = '';
                                        $prop_status = '';
                                        $payment = '';
                                        $interested_in_turkish_citizenship = '';
                                        $purpose_of_purchase = '';
                                        $urgent = '';
                                        if(in_array($row->look, ['sea','city','forest','bosphorus'] )){
                                            $look = 'admin.' . $row->look;
                                            $look = trans($look);
                                        }
                                        if(in_array($row->prop_type, ['villa','duplex','land','store','office'] )){
                                            $prop_type = 'admin.' . $row->prop_type;
                                            $prop_type = trans($prop_type);
                                        }
                                        if(in_array($row->prop_status, ['ready','under_construction','ready_in_6_months'] )){
                                            $prop_status = 'admin.' . $row->prop_status;
                                            $prop_status = trans($prop_status);
                                        }
                                        if(in_array($row->payment, ['cash','install','cash_install'] )){
                                            $payment = 'admin.' . $row->payment;
                                            $payment = trans($payment);
                                        }
                                        if(in_array($row->interested_in_turkish_citizenship, ['yes','no'] )){
                                            $interested_in_turkish_citizenship = 'admin.' . $row->interested_in_turkish_citizenship;
                                            $interested_in_turkish_citizenship = trans($interested_in_turkish_citizenship);
                                        }
                                        if(in_array($row->purpose_of_purchase, ['investment','residence_investment','family_house','vacationing'] )){
                                            $purpose_of_purchase = 'admin.' . $row->purpose_of_purchase;
                                            $purpose_of_purchase = trans($purpose_of_purchase);
                                        }
                                        if(in_array($row->urgent, ['yes','no','normal'] )){
                                            $urgent = 'admin.' . $row->urgent;
                                            $urgent = trans($urgent);
                                        }

                                            
                                    ?>
                                    <a href="javascript:void(0);" data-route="{{route('get.offerOrder.view',[$row->id])}}" class="m-r-15 text-muted  view-row" data-client_name="{{$row->client_name}}" data-prop_type="{{$prop_type}}" data-region="@if($row->region_id != null) {{$row->region->name}} @endif"  data-number_of_rooms="@if($row->number_of_rooms_id != null) {{$row->numberOfRooms->name}} @endif" data-prop_status="{{$prop_status}}" data-expected_price="{{$row->expected_price}}" data-payment="{{$payment}}" data-look="{{$look}}" data-nationality="{{$row->nationality}}" data-link="{{$row->link}}" data-interested_in_turkish_citizenship="{{$interested_in_turkish_citizenship}}" data-purpose_of_purchase="{{$purpose_of_purchase}}" data-urgent="{{$urgent}}" data-notes="{{$row->notes}}" data-date_visit="{{$row->date_visit}}"  data-toggle="modal" data-target=".view-modal" data-toggle="tooltip" data-placement="top" title="" data-original-title="View">
                                        <i class="mdi mdi-eye font-18"></i>
                                    </a>
                                    <!--
                                    @if($row->checked == 'yes')
                                        <a href="{{route('get.offerOrder.uncheck',[$row->id])}}" class="m-r-15 text-muted  delete-row " data-toggle="tooltip" data-placement="top" title="" data-original-title="Uncheck">
                                            <i class="mdi mdi-checkbox-marked-circle font-18" style="color:green;"></i>
                                        </a>
                                    @else
                                        <a href="{{route('get.offerOrder.check',[$row->id])}}" class="m-r-15 text-muted  delete-row " data-toggle="tooltip" data-placement="top" title="" data-original-title="Check">
                                            <i class="mdi mdi-check font-18" style="color:red;"></i>
                                        </a>
                                    @endif
                                    -->
                                   
                                        <a href="{{ route('get.offerOrder.edit',[$row->id]) }}" class="m-r-15 text-muted edit-row" title="" data-original-title="Edit">
                                            <i class="mdi mdi-pencil font-18"></i>
                                        </a>

                                        <a href="javascript:void(0);" data-route="{{route('get.offerOrder.delete',[$row->id])}}" class="m-r-15 text-muted  delete-row " data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete">
                                            <i class="mdi mdi-close font-18"></i>
                                        </a>
                                    
                                </td>
                            </tr>
                            @endforeach

                            @else 
                            <tr> 
                                <td colspan="8" class="text-center"> 
                                    @lang('admin.msg.notFoundData') 
                                </td> 
                            </tr>
                            @endif

                        </tbody>
                    </table>

                    <div class="d-flex justify-content-center w-100 my-5">
                        {!! $rows->render() !!}
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- end col -->

    @include('offerOrders.forms.view')
@endsection

@section('script')

    <script>
        $(document).on("click",".view-row",function(){
            
            console.log("heyy");
            var el = $(this);
            $("#client_name").html(el.attr("data-client_name"));
            $("#prop_type").html(el.attr("data-prop_type"));
            $("#region").html(el.attr("data-region"));
            $("#number_of_rooms").html(el.attr("data-number_of_rooms"));
            $("#prop_status").html(el.attr("data-prop_status"));
            $("#expected_price").html(el.attr("data-expected_price"));
            $("#payment").html(el.attr("data-payment"));
            $("#look").html(el.attr("data-look"));
            $("#nationality").html(el.attr("data-nationality"));
            $("#interested_in_turkish_citizenship").html(el.attr("data-interested_in_turkish_citizenship"));
            $("#purpose_of_purchase").html(el.attr("data-purpose_of_purchase"));
            $("#urgent").html(el.attr("data-urgent"));
            $("#notes").html(el.attr("data-notes"));
            $("#date_visit").html(el.attr("data-date_visit"));
            $("#link").html(el.attr("data-link"));


        }); 

    </script>

    <script>


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





    @include('inc.ajax.delete')

@endsection