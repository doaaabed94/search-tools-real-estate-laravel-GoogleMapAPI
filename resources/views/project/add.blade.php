@extends('main')

@section('style')
<style>
    .card-body
    {
        padding: 20px 10% 20px 10%; 
    }
    .pnor_line_template{
        display: none;
    }

    .card-grey-rounded{
        background-color: #f5f5f5;
    }
        li{
            list-style: none;

    }
</style>

<link rel="stylesheet" href="{{aurl()}}/plugins/select2/css/select2.min.css">
@endsection

@section('content')


<!-- end col -->
<div class="col-lg-12">

      
                <form id="FormAdd" method="post" action="{{ route('post.project.store') }}" enctype="multipart/form-data" >
                        <div class="coverLoading"><img src="{{aurl()}}/loader.gif"></div>
                        @csrf
      <div class="card m-b-20">
        <div class="card-body">

            <div class="d-flex mb-2">
                <h4 class="mt-0 header-title m{{getInvDir()}}-auto">  @lang('admin.projects') / @lang('admin.addNew')</h4>
                <h4 class="mt-0 header-title m{{getDir()}}-auto"> 
                    <a href="{{ route('get.project.index') }}" class="btn btn-success fontLight">@lang('admin.back')</a> 
                </h4>
            </div>

@if (Session::has('message'))
<div class="col-md-12">
<div class="alert alert-success" role="alert" style="font-size: 20px; text-align: center;">
  {{ Session::get('message') }}</div>
</div>
@endif

@if (Session::has('message-danger'))
<div class="col-md-12">
<div class="alert alert-danger" role="alert" style="font-size: 20px; text-align: center;">
  {{ Session::get('message') }}</div>
</div>
@endif            <div class="coverLoading"><img src="{{aurl()}}/loader.gif"></div>
            
            <div class="form-group row">
                <ul id="errorsAdd"></ul>
            </div>

            <div class="row">
               <div class="col-md-12">
                <div class="form-group row">
                    <label class="col-sm-12 col-form-label span-show">بيانات أساسية</label>   
                </div>
            </div>



         <div class="col-md-3">
                <div class="form-group row">
                    <label class="col-sm-12 col-form-label">@lang('admin.title_project')</label>
                    <div class="col-sm-12">
                        <input class="form-control" name="title_project" type="text" required>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group row">
                    <label class="col-sm-12 col-form-label">@lang('admin.name')</label>
                    <div class="col-sm-12">
                        <input class="form-control" name="name" type="search" required>
                    </div>
                </div>
            </div>


            <div class="col-md-3">
                <div class="form-group row">
                  <label class="col-sm-12 col-form-label">@lang('admin.region')</label>
                  <div class="col-sm-12">
                      <select class="input-select2 custom-select" name="region_id" required>
                          <option value="">@lang('admin.notExist')</option>
                          @foreach($regions as $region)
                          <option value="{{$region->id}}"> {{$region->name .' - '. $region->city->name}} </option>
                          @endforeach
                      </select>
                  </div>
              </div>
          </div> 


          <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.projectType')</label>
                <div class="col-sm-12">
                    <select class="custom-select" name="project_type">
                        <option value="invest_resident"> @lang('admin.invest_resident') </option>
                        <option value="resident"> @lang('admin.resident') </option>
                        <option value="invest"> @lang('admin.invest') </option>
                        <option value="hotel"> @lang('admin.hotel') </option>
                    </select>
                </div>
            </div>
        </div>

         <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.payment')</label>
                <div class="col-sm-12">
                    <select class="custom-select" name="payment">
                        <option value="">@lang('admin.notExist')</option>
                        <option value="cash"> @lang('admin.cash') </option>
                        <option value="cash_install"> @lang('admin.cash_install') </option>
                    </select>
                </div>
            </div>
        </div>
        
        <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.propStatus')</label>
                <div class="col-sm-12">
                    <select class="custom-select" name="prop_status" >
                        <option value="">@lang('admin.notExist')</option>
                        <option value="under_construction">@lang('admin.under_construction')</option>
                        <option value="ready">@lang('admin.ready')</option>
                        <option value="used">إعادة بيع</option>

                    </select>
                </div>
            </div>
        </div>


        <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.nationality')</label>
                <div class="col-sm-12">
                    <select class="custom-select" name="nationality" >
                        <option value="">@lang('admin.notExist')</option>
                        <option value="yes">@lang('admin.yes')</option>
                        <option value="no">@lang('admin.no')</option>
                    </select>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.category')</label>
                <div class="col-md-12">
                    <select class="custom-select" name="category_id_fk" required>
                        <option value="">@lang('admin.notExist')</option>
                        @foreach($category as $data)
                        <option value="{{$data->id}}"> {{$data->name}} </option>
                        @endforeach
                    </select>
                </div>
            </div>
        </div>


        <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.instalment')</label>
                <div class="col-md-12">
                    <select class="custom-select" name="instalment_id_fk" required>
                        @foreach($instalment as $data)
                        <option value="{{$data->id}}"> {{$data->name}} </option>
                        @endforeach
                    </select>
                </div>
            </div>
        </div>

        <style type="text/css">
            textarea{
                height: 188px !important;
            }
        </style>

        <div class="col-md-6">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.notes')</label>
                <div class="col-md-12">
                    <textarea name="notes" width="100%" class="form-control"></textarea>
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.description')</label>
                <div class="col-md-12">
                   <textarea name="description" class="form-control"></textarea>
               </div>
           </div>
       </div>

 <div class="col-md-6">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.video_link')</label>
                <div class="col-md-12">
                   <input name="video_link" class="form-control" >
                   <p>@lang('admin.video_link_note')</p>
               </div>
           </div>
       </div>

<div class="col-md-3">
     <div class="form-group row">
     <label class="col-sm-12 col-form-label">@lang('admin.uploadVideo')</label>
      <div class="col-md-12">
  <input type="file"  name="video[]" multiple="multiple"/>
</div> 
</div> 
</div> 


<div class="col-md-3">
            <div class="form-group row">

  <label class="col-sm-12 col-form-label">صورة whatsapp يجب ان تكون أقل من 300K</label>
  <input type="file" id="image_whatsapp" name="image_whatsapp" />
</div> 
</div> 


<div class="col-md-12">
  <label class="button" for="images">رفع الصور</label>
  <input type="file" id="images" name="img[]" multiple="multiple"/>
  <div id="multiple-file-preview">
    <ul id="sortable"  class="row">
      <div class="clear-both"></div>
    </ul>
  </div>
</div> 

   </div>
   
</div>
</div>
<div class="card m-b-20">
    <div class="card-body">

       <div class="col-md-12">
        <div class="form-group row" >
            
         
            <label class="col-sm-12 col-form-label"> <span id="make_show_button" class="span-show">+  بيانات إضافية  </span>
                <span id="make_hide_button" class="span-show">-  بيانات إضافية  </span></label>
            </div>
        </div>
        <div id="extra_data" class="row">

            <div class="col-md-3">
                <div class="form-group row">
                  <label class="col-sm-12 col-form-label">@lang('admin.link')</label>
                  <div class="col-sm-12">
                    <input class="form-control" name="link" type="search">
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.contactPersonName')</label>
                <div class="col-sm-12">
                    <input class="form-control" name="contact_person_name" type="search" >
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.contactPersonPhone')</label>
                <div class="col-sm-12">
                    <input class="form-control" name="contact_person_phone" type="search" >
                </div>
            </div>
        </div>


        <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.plan1Percentage')</label>
                <div class="col-sm-12">
                    <input class="form-control" name="plan1_percentage" type="text" >
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.plan1Months')</label>
                <div class="col-sm-12">
                    <input class="form-control" name="plan1_months" type="text" >
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.plan2Percentage')</label>
                <div class="col-sm-12">
                    <input class="form-control" name="plan2_percentage" type="text" >
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.plan2Months')</label>
                <div class="col-sm-12">
                    <input class="form-control" name="plan2_months" type="text" >
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.plan3Percentage')</label>
                <div class="col-sm-12">
                    <input class="form-control" name="plan3_percentage" type="text" >
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.plan3Months')</label>
                <div class="col-sm-12">
                    <input class="form-control" name="plan3_months" type="text" >
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.cashDiscount')</label>
                <div class="col-sm-12">
                    <input class="form-control" name="cash_discount" type="text" >
                </div>
            </div>
        </div>


        <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.deliveryDate')</label>
                <div class="col-sm-12">
                    <input class="form-control" name="delivery_date" type="date">
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.looks')</label>
                <div class="col-sm-12">
                    <select class="custom-select" id="looks" multiple>
                        <option value="sea"> @lang('admin.sea') </option>
                        <option value="forest"> @lang('admin.forest') </option>
                        <option value="bosphorus"> @lang('admin.bosphorus') </option>
                        <option value="city"> @lang('admin.city') </option>
                        <option value="greenSpace"> @lang('admin.greenSpace') </option>
                    </select>
                </div>
            </div>
        </div>
    </div>

</div>
</div>

<input type="hidden" name="display_website" value="1"/>

<input type="hidden" name="number_of_rooms" id="number_of_rooms" />

<div class="form-group row">
    <div class="col-sm-12 text-center">
        <button class="btn btn-warning fontLight" id="add_flat_btn">
            @lang('admin.addFlat')
        </button>
        <button class="btn btn-primary fontLight submit-btn"  type="submit">
            @lang('admin.save')
        </button>
        <a href="{{ route('get.project.index') }}" class="btn btn-success fontLight">
            @lang('admin.back')
        </a>    
    </div>
</div>

</form>
<div id="pnor_lines" class="col-md-12">
    <div class="row pnor_line_template">
        <div class="col-md-6">
            <div class="form-group row">
                <label class="col-sm-4 col-form-label">@lang('admin.numberOfRooms')</label>
                <div class="col-sm-8">
                    <select class="custom-select" name="number_of_rooms_id" required>
                        <option value="">@lang('admin.notExist')</option>
                        @foreach($number_of_rooms as $number_of_room)
                        <option value="{{$number_of_room->id}}"> {{$number_of_room->name}} </option>
                        @endforeach
                    </select>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <button class="btn btn-danger fontLight remove_pnor_line">
                @lang('admin.delete')
            </button>
        </div>
        <div class="col-md-6">
            <div class="form-group row">
                <label class="col-sm-4 col-form-label">@lang('admin.areaFrom')</label>
                <div class="col-sm-8">
                    <input class="form-control" name="area_from" type="number" >
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group row">
                <label class="col-sm-4 col-form-label">@lang('admin.areaTo')</label>
                <div class="col-sm-8">
                    <input class="form-control" name="area_to" type="number" >
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group row">
                <label class="col-sm-4 col-form-label">@lang('admin.priceFrom')</label>
                <div class="col-sm-8">
                    <input class="form-control" name="price_from" type="number" >
                    <span>الرجاء ادخال القيم صحيحة بدون فواصل</span>

                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div class="form-group row">
                <label class="col-sm-4 col-form-label">@lang('admin.priceTo')</label>
                <div class="col-sm-8">
                    <input class="form-control" name="price_to" type="number" >
                    <span>الرجاء ادخال القيم صحيحة بدون فواصل</span>

                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group row">
                <label class="col-sm-4 col-form-label">@lang('admin.priceFromDollar')</label>
                <div class="col-sm-8">
                    <input class="form-control" name="price_from_dollar" type="number" >
                    <span>يتم حساب القيمة تلقائيا</span>
                    
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div class="form-group row">
                <label class="col-sm-4 col-form-label">@lang('admin.priceToDollar')</label>
                <div class="col-sm-8">
                    <input class="form-control" name="price_to_dollar" type="number" >
                    <span>يتم حساب القيمة تلقائيا</span>

                </div>
            </div>
        </div>
    </div>
</div>

</div>

@endsection

<?php 
$routeAdd = route('post.project.store'); 
$redirectRoute = route('get.project.index'); 
?>

@section('script')

<script src="{{aurl()}}/plugins/select2/js/select2.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>

<script>

    var project_number_of_rooms_item = '<div class="card  p-3 pnor_line mb-3"> <div class="row">' + $('.pnor_line_template').html() + '</div></div>';
    
    $(".submit-btn").click(function()
    {
        $('<input />').attr('type', 'hidden')
        .attr('name', 'looks')
        .attr('value', $('#looks').val().join())
        .appendTo('#FormAdd');

        var items = [];
        $( ".pnor_line" ).each(function() {            
            item = [
            ['number_of_rooms_id' , $( this ).find( "select[name='number_of_rooms_id']" ).val()],
            ['area_from' , $( this ).find( "input[name='area_from']" ).val()],
            ['area_to' , $( this ).find( "input[name='area_to']" ).val()],
            ['price_from',  $( this ).find( "input[name='price_from']" ).val()],
            ['price_to' , $( this ).find( "input[name='price_to']" ).val()],
            ['price_from_dollar',  $( this ).find( "input[name='price_from_dollar']" ).val()],
            ['price_to_dollar' , $( this ).find( "input[name='price_to_dollar']" ).val()]
            ]
            items.push(item);
        });

        $('#number_of_rooms').val(JSON.stringify(items));
    });

    $("#add_flat_btn").click(function(e)
    {
        e.preventDefault();
        $('#pnor_lines').append(project_number_of_rooms_item);
    });

    $(document).on("click", "button.remove_pnor_line" , function(e) {
        e.preventDefault();
        $(this).closest('.pnor_line').remove();
    });

    $(document).ready(function() {
        $('.input-select2').select2({
            @if(getDir() == 'r')
            dir: "rtl"
            @endif
        });
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


<script type="text/javascript">
    $(function () {
  $("#images").change(function (e) {
    var files = e.target.files;
    for (var i = 0; i <= files.length; i++) {
      // when i == files.length reorder and break
      if (i == files.length) {
        // need timeout to reorder beacuse prepend is not done
        setTimeout(function () {
          reorderImages();
        }, 100);
        break;
      }

      var file = files[i];
      var reader = new FileReader();

      reader.onload = (function (file) {
        return function (event) {
          $("#sortable").prepend(
            '<li class="ui-state-default" data-order=0 data-id="' +
              file.lastModified +
              '"><img src="' +
              event.target.result +
              '" style="width:100%;"  class="img-thumbnail" /> </li>'
          );
        };
      })(file);

      reader.readAsDataURL(file);
    } // end for;
  });

  $("#sortable").sortable();
  $("#sortable").disableSelection();

  //sortable events
  $("#sortable").on("sortbeforestop", function (event) {
    reorderImages();
  });

  function reorderImages() {
    // get the items
    var images = $("#sortable li");

    var i = 0,
    nrOrder = 0;
    for (i; i < images.length; i++) {
      var image = $(images[i]);
    console.log(image[i]);
      if (
        image.hasClass("ui-state-default") &&
        !image.hasClass("ui-sortable-placeholder")
      ) {
        image.attr("data-order", nrOrder);
        var orderNumberBox = image.find(".order-number");
        orderNumberBox.html(nrOrder + 1);
        nrOrder++;



      } // end if;
    } // end for;
  }
});


$("#sortable").on('click', '.btnDelete', function () {
    $(this).closest('li').remove();
});
</script>


@endsection

