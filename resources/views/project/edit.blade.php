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

    .card-grey-rounded[data-status="old"]{
        background-color: #ddddbb;
    }

    .card-grey-rounded[data-status="new"]{
        background-color: #f5f5f5;
    }

    .card-grey-rounded[data-status="edited"]{
        background-color: #a1c2f7;
    }
    .span-show{
        color: rgb(33, 37, 41);
        font-size: 20px;
        font-weight: 700;
    }
    li{
            list-style: none;

    }
</style>
<link rel="stylesheet" href="{{aurl()}}/plugins/select2/css/select2.min.css">
@endsection

@section('content')
  <form id="FormEdit"  enctype="multipart/form-data" >
                    <div class="coverLoading"><img src="{{aurl()}}/loader.gif"></div>
                        @csrf
      <div class="card m-b-20">
        <div class="card-body">
             <div class="d-flex mb-2">
                <h4 class="mt-0 header-title m{{getInvDir()}}-auto">@lang('admin.projects') / @lang('admin.edit') / {{ $row->name }}</h4>
                <h4 class="mt-0 header-title m{{getDir()}}-auto"><a href="{{ route('get.project.index') }}" class="btn btn-success fontLight">@lang('admin.back')</a></h4>
            </div>
    @if (Session::has('message'))
    <div class="col-md-12">
    <div class="alert alert-success" role="alert" style="font-size: 20px; text-align: center;">{{ Session::get('message') }}</div>
    </div>
    @endif

    @if (Session::has('message-danger'))
    <div class="col-md-12">
    <div class="alert alert-danger" role="alert" style="font-size: 20px; text-align: center;">{{ Session::get('message') }}</div>
    </div>
    @endif   

    <div class="coverLoading"><img src="{{aurl()}}/loader.gif"></div>
            <div class="form-group row">
                <ul id="errorsAdd"></ul>
            </div>
            <input type="hidden" name="id" value="{{$row->id}}">
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
                        <input class="form-control" name="title_project" type="text" value="{{ $row->title_project}}">
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="form-group row">
                    <label class="col-sm-12 col-form-label">@lang('admin.name')</label>
                    <div class="col-sm-12">
                        <input class="form-control" name="name" type="search" value="{{ $row->name }}" required>
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
                            <option value="{{$region->id}}" @isset($row->region_id) @if($row->region_id == $region->id) selected @endif @endisset> {{$region->name .' - '. $region->city->name}} </option>
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

                     
                                            <option value="invest_resident"  @if($row->project_type == 'invest_resident') selected @endif> @lang('admin.invest_resident') </option>
                        
                                            <option value="resident"  @if($row->project_type == 'resident') selected @endif> @lang('admin.resident') </option>
                                            <option value="hotel" @if($row->project_type == 'hotel') selected @endif> @lang('admin.hotel') </option>
                                            <option value="invest" @if($row->project_type == 'invest') selected @endif> @lang('admin.invest') </option>
                                        </select>
                </div>
            </div>
        </div>



   <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.payment')</label>
                <div class="col-sm-12">
                    <select class="custom-select" name="payment">
                                            <option value="cash" @if($row->payment == 'cash') selected @endif > @lang('admin.cash') </option>
                                            <option value="cash_install" @if($row->payment == 'cash_install') selected @endif> @lang('admin.cash_install') </option>
                                        </select>
                </div>
            </div>
        </div>
        
     <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.propStatus')</label>
                <div class="col-sm-12">
                     <select class="custom-select" name="prop_status"  >
                                            <option value="">@lang('admin.notExist')</option>
                                            <option value="under_construction" @isset($row->prop_status) @if($row->prop_status == 'under_construction') selected @endif @endisset >@lang('admin.under_construction')</option>
                                            <option value="ready"  @isset($row->prop_status) @if($row->prop_status == 'ready') selected @endif @endisset>@lang('admin.ready')</option>
                                              <option value="used">      إعادة بيع</option>
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
                        <option value="yes" @isset($row->nationality)@if($row->nationality == 'YES')selected @endif @endisset> @lang('admin.yes')</option>
                        <option value="no"@isset($row->nationality) @if($row->nationality == 'NO') selected @endif @endisset> @lang('admin.no') </option>
                    </select>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.category')</label>
                <div class="col-md-12">
                    <select class="custom-select" name="category_id_fk" >
                        <option value="">@lang('admin.notExist')</option>
                        @foreach($category as $data)
                        <option value="{{$data->id}}" @if($data->id == $row->category_id_fk) selected @endif> {{$data->name}} </option>
                        @endforeach
                    </select>
                </div>
            </div>
        </div>


        <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.instalment')</label>
                <div class="col-md-12">
                    <select class="custom-select" name="instalment_id_fk" >
                        @foreach($instalment as $data)
                        <option value="{{$data->id}}" @if($data->id == $row->instalment_id_fk) selected @endif> {{$data->name}} </option>
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
                    <textarea name="notes" width="100%" class="form-control">{{ $row->notes }}</textarea>
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.description')</label>
                <div class="col-md-12">
                   <textarea name="description" class="form-control">{{ $row->description }}</textarea>
               </div>
           </div>
       </div>
<style type="text/css">
    #sortableVideo{
        display: flex;
    }
</style>

 <div class="col-md-6">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.video_link')</label>
                <div class="col-md-12">
                   <input name="video_link" class="form-control" value="{{ $row->video_link }}">
                   <p>@lang('admin.video_link_note')</p>
               </div>
           </div>
       </div>


<div class="col-md-6">
            <div class="form-group row">

  <label class="col-sm-12 col-form-label">صورة whatsapp يجب ان تكون أقل من 300K</label>
  <input type="file" id="image_whatsapp" name="image_whatsapp" /><br>
<img src="{{ getImg(PROJECT_IMG_PATH .$row->image_whatsapp) }}" style="width:100%;height: 100px;"  class="img-thumbnail" />
</div> 
</div> 

      <div class="col-md-6">


            <div class="form-group row">
                <label class="col-sm-12 col-form-label">إضافة فيديو جديد</label>
                    <div class="col-md-12">
  <input type="file"  name="video[]" multiple="multiple"/>
  <p> ملاحظة : ان يكون الفيديو اقل من 10 M </p>
</div> 
                <div class="col-md-12">
                    <ul id="sortableVideo">
                          @foreach ($row->video as $key=>$e)
                        <li>
                        <iframe src="{{ getImg(PROJECT_VIDEO_PATH. $e->video) }}" id="pro-video"></iframe>
                        <div onclick="GFG_video_Fun('{{$e->id}}');"  class="btnDelete"><i class="fa fa-trash"></i></div>
                        </li>
                        @endforeach
                    </ul>
               </div>
           </div>



       </div>


                <div class="block">
                        <label class="button" for="images" id="edit_image">@lang('admin.moreImgs')</label>
                      <input type="file" id="images" name="image_pro[]" multiple="multiple"/>
                      <div id="multiple-file-preview">
                        <ul id="sortable" class="row">
                            @foreach ($images as $key=>$image)
                            <li class="ui-state-default" data-order=0 data-id="{{$key}}"><img src="{{ getImg(PROJECT_IMG_PATH .$image->img) }}" 
                                style="width:100%;"  class="img-thumbnail" />
                            <input type="hidden" class="order-number" value="@if($image->order_number == null){{$key}}@else {{$image->order_number}}@endif" name="order-n[{{$key}}]">
                            <input type="hidden" value="{{$image->id}}" name="order-image-old[{{$key}}]">
                            <div onclick="GFG_Fun('{{$image->id}}');"  class="btnDelete"><i class="fa fa-trash"></i></div>
                            </li>
                            <div class="clear-both"></div>
                            @endforeach
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
                     <input class="form-control" name="link" type="search" value="{{ $row->link }}">
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.contactPersonName')</label>
                <div class="col-sm-12">
                    <input class="form-control" name="contact_person_name" value="{{ $row->contact_person_name }}" type="search" >
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.contactPersonPhone')</label>
                <div class="col-sm-12">
                    <input class="form-control" name="contact_person_phone" value="{{ $row->contact_person_phone }}" type="search" >
                </div>
            </div>
        </div>


        <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.plan1Percentage')</label>
                <div class="col-sm-12">
                     <input class="form-control" name="plan1_percentage" type="number" value="{{ $row->plan1_percentage }}">
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.plan1Months')</label>
                <div class="col-sm-12">
                     <input class="form-control" name="plan1_months" type="number" value="{{ $row->plan1_months }}" >
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.plan2Percentage')</label>
                <div class="col-sm-12">
                    <input class="form-control" name="plan2_percentage" type="number" value="{{ $row->plan2_percentage }}" >
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.plan2Months')</label>
                <div class="col-sm-12">
                   <input class="form-control" name="plan2_months" type="number" value="{{ $row->plan2_months }}" >
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.plan3Percentage')</label>
                <div class="col-sm-12">
                    <input class="form-control" name="plan3_percentage" type="number" value="{{ $row->plan3_percentage }}" >
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.plan3Months')</label>
                <div class="col-sm-12">
                    <input class="form-control" name="plan3_months" type="number" value="{{ $row->plan3_months }}">
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.cashDiscount')</label>
                <div class="col-sm-12">
                    <input class="form-control" name="cash_discount" type="number" value="{{ $row->cash_discount }}">
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.deliveryDate')</label>
                <div class="col-sm-12">
                    <input class="form-control" name="delivery_date" type="date" value="{{ $row->delivery_date }}">
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="form-group row">
                <label class="col-sm-12 col-form-label">@lang('admin.looks')</label>
                <div class="col-sm-12">
                     <select class="custom-select" id="looks" multiple>
                                            <option value="sea" @isset($row->looks) @if(strpos($row->looks, 'sea') !== false) selected @endif @endisset> @lang('admin.sea') </option>
                                            <option value="forest"  @isset($row->looks) @if(strpos($row->looks, 'forest') !== false) selected @endif @endisset> @lang('admin.forest') </option>
                                            <option value="bosphorus"  @isset($row->looks) @if(strpos($row->looks, 'bosphorus') !== false) selected @endif @endisset> @lang('admin.bosphorus') </option>
                                            <option value="city" @isset($row->looks) @if(strpos($row->looks, 'city') !== false) selected @endif @endisset> @lang('admin.city') </option>
                                            <option value="greenSpace"  @isset($row->looks) @if(strpos($row->looks, 'greenSpace') !== false) selected @endif @endisset> @lang('admin.greenSpace') </option>
                                        </select>
                </div>
            </div>
        </div>
    </div>

</div>
</div>


                        <input type="hidden" name="number_of_rooms" id="number_of_rooms" />
                        <input type="hidden" name="to_edit_flats" id="to_edit_flats" />
                        <input type="hidden" name="number_of_rooms_deleted" id="number_of_rooms_deleted" />

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
                                    <select class="custom-select" data-name="number_of_rooms_id" required>
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
                                    <input class="form-control" data-name="area_from" type="number" >
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">@lang('admin.areaTo')</label>
                                <div class="col-sm-8">
                                    <input class="form-control" data-name="area_to" type="number" >
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">@lang('admin.priceFrom')</label>
                                <div class="col-sm-8">
                                    <input class="form-control" data-name="price_from" type="number" >
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">@lang('admin.priceTo')</label>
                                <div class="col-sm-8">
                                    <input class="form-control" data-name="price_to" type="number" >
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">@lang('admin.priceFromDollar')</label>
                                <div class="col-sm-8">
                                    <input class="form-control" data-name="price_from_dollar" type="number" >
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">@lang('admin.priceToDollar')</label>
                                <div class="col-sm-8">
                                    <input class="form-control" data-name="price_to_dollar" type="number" >
                                </div>
                            </div>
                        </div>
                    </div>
                    @foreach($row->projectNumberOfRooms as $item)
                        <div class="card card-grey-rounded  p-3 pnor_line mb-3" data-status="old" data-id="{{$item->id}}" >
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label">@lang('admin.numberOfRooms')</label>
                                        <div class="col-sm-8">
                                            <select class="custom-select" data-name="number_of_rooms_id" required readonly disabled="disabled">
                                                <option disabled="disabled" value="">@lang('admin.notExist')</option>
                                                @foreach($number_of_rooms as $number_of_room)
                                                    <option disabled="disabled" value="{{$number_of_room->id}}" @if($item->number_of_rooms_id == $number_of_room->id) selected @endif> {{$number_of_room->name}} </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <button class="btn btn-primary fontLight button-edit-flat">
                                        @lang('admin.edit')
                                    </button>
                                    <button class="btn btn-danger fontLight remove_pnor_line">
                                        @lang('admin.delete')
                                    </button>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label">@lang('admin.areaFrom')</label>
                                        <div class="col-sm-8">
                                            <input class="form-control" data-name="area_from" value="{{$item->area_from}}" type="number" >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label">@lang('admin.areaTo')</label>
                                        <div class="col-sm-8">
                                            <input class="form-control" data-name="area_to" value="{{$item->area_to}}" type="number" >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label">@lang('admin.priceFrom')</label>
                                        <div class="col-sm-8">
                                            <input class="form-control" data-name="price_from" value="{{$item->price_from}}" type="number" >
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label">@lang('admin.priceTo')</label>
                                        <div class="col-sm-8">
                                            <input class="form-control" data-name="price_to" value="{{$item->price_to}}" type="number" >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label">@lang('admin.priceFromDollar')</label>
                                        <div class="col-sm-8">
                                            <input class="form-control" data-name="price_from_dollar" value="{{$item->price_from_dollar}}" type="number" >
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label">@lang('admin.priceToDollar')</label>
                                        <div class="col-sm-8">
                                            <input class="form-control" data-name="price_to_dollar" value="{{$item->price_to_dollar}}" type="number" >
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
                
            </div>
        </div>
    </div>
</div>

@endsection

<?php 
    $routeEdit = route('post.project.update'); 
    $redirectRoute = route('get.project.index'); 
?>
@section('script')

<script src="{{aurl()}}/plugins/select2/js/select2.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
<script>

    var project_number_of_rooms_item = '<div class="card card-grey-rounded  p-3 pnor_line mb-3" data-status="new" > <div class="row">' + $('.pnor_line_template').html() + '</div></div>';
    var deleted_items = [];
    var to_edit_flats = [];
    $("#FormEdit .submit-btn").click(function()
    {
        $('<input />').attr('type', 'hidden')
            .attr('name', 'looks')
            .attr('value', $('#looks').val().join())
            .appendTo('#FormEdit');

        var items = [];
        $( ".pnor_line[data-status='new']" ).each(function() {            
            item = [
                ['number_of_rooms_id' , $( this ).find( "select[data-name='number_of_rooms_id']" ).val()],
                ['area_from' , $( this ).find( "input[data-name='area_from']" ).val()],
                ['area_to' , $( this ).find( "input[data-name='area_to']" ).val()],
                ['price_from',  $( this ).find( "input[data-name='price_from']" ).val()],
                ['price_to' , $( this ).find( "input[data-name='price_to']" ).val()],
                ['price_from_dollar',  $( this ).find( "input[data-name='price_from_dollar']" ).val()],
                ['price_to_dollar' , $( this ).find( "input[data-name='price_to_dollar']" ).val()]
            ]
            items.push(item);
        });

        $('#number_of_rooms').val(JSON.stringify(items));
        $('#to_edit_flats').val(JSON.stringify(to_edit_flats));
        $('#number_of_rooms_deleted').val(deleted_items.join());
    });

    $("#add_flat_btn").click(function(e)
    {
        e.preventDefault();
        $('#pnor_lines').append(project_number_of_rooms_item);
    });

    $(document).on("click", "button.remove_pnor_line" , function(e) {
        e.preventDefault();
        pnor_line = $(this).closest('.pnor_line');
        if(pnor_line.data('status') == 'old'){
            
            deleted_items.push(pnor_line.data('id'));
        }
        pnor_line.remove()
    });

    $(document).ready(function() {
        $('.input-select2').select2({
            @if(getDir() == 'r')
            dir: "rtl"
            @endif
        });


        $pnor_line.attr('data-status','edited');

    });

    $(document).ready(function() {
         $('#extra_data').hide().prop('disabled', false);
  $('#make_show_button').show();
 $('#make_hide_button').hide();
   });

    $(".button-edit-flat").click(function(e){
        $pnor_line = $(this).closest('.pnor_line');

        if($("#form-edit-flat") != null){
            item = [
                ['id' , $pnor_line.data('id')],
                ['area_from' , $pnor_line.find( "input[data-name='area_from']" ).val()],
                ['area_to' , $pnor_line.find( "input[data-name='area_to']" ).val()],
                ['price_from', $pnor_line.find( "input[data-name='price_from']" ).val()],
                ['price_to' , $pnor_line.find( "input[data-name='price_to']" ).val()],
                ['price_from_dollar', $pnor_line.find( "input[data-name='price_from_dollar']" ).val()],
                ['price_to_dollar' , $pnor_line.find( "input[data-name='price_to_dollar']" ).val()]
            ]
            to_edit_flats.push(item);
        }

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

<script>
    function GFG_Fun(parameter) {
            $('<input>').attr('type','hidden').attr('value',parameter).attr('name','deleteimg[]').appendTo('#FormEdit');
        }

           function GFG_video_Fun(parameter) {
            $('<input>').attr('type','hidden').attr('value',parameter).attr('name','deletevideo[]').appendTo('#FormEdit');
        }
</script>
<script type="text/javascript">
var kss = 0;
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
      kss++;
      reader.onload = (function (file) {
        return function (event) {
         
          $("#sortable").prepend(
            '<li class="ui-state-default" data-order=0 data-id="' +
              file.lastModified +
              '"><img src="' +event.target.result +'" style="width:100%;"  class="img-thumbnail" /><input type="hidden" class="order-number" value="0"  name="named[]"></li>'
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

      if (
        image.hasClass("ui-state-default") &&
        !image.hasClass("ui-sortable-placeholder")
      ) {
        image.attr("data-order", nrOrder);
        var orderNumberBox = image.find(".order-number");
        orderNumberBox.attr('value',nrOrder + 1);
        nrOrder++;
      }
    }
  }
});

$("#sortable").on('click', '.btnDelete', function () {
    $(this).closest('li').remove();
});


$("#sortableVideo").on('click', '.btnDelete', function () {
    $(this).closest('li').remove();
});

</script>


@include('inc.ajax.update')

@endsection

