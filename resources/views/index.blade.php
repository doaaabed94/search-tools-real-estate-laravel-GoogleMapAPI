@extends('main')

@section('style')
<style>
    .card-grey-rounded{
        background-color: #f5f5f5;
    }
    .flex-center{
        justify-content: center;
    }
    .nav-link.active, .nav-link:hover{
        color: #67a8e4 !important;
    }

    .nav-link{
        font-weight: bold;
        color: #495057;
    }
      .delay-alert{
     display: none; width: 300px;
    position: fixed;
    z-index: 999;
    top: 150px;
    left: 43px;
  animation-name: delay-alert-ani;
  animation-duration: 4s;
}

@keyframes delay-alert-ani {

  50%  {top:200px;}
}


</style>

<link rel="stylesheet" href="{{aurl()}}/plugins/select2/css/select2.min.css">
<link rel="stylesheet" href="{{aurl()}}/assets/css/dataTables.bootstrap4.min.css">
@endsection

@section('content')



<div class="col-lg-12">

    <div class="alert alert-success delay-alert" role="alert" id="alertmes">
  <h5 id="alerttext"></h5>
</div>
<div class="alert alert-success delay-alert" role="alert" id="alertmes_rem" style="">
  <h5 id="alerttext_rem"> </h5>
</div>

    <div class="card m-b-20">
        <div class="card-body my-2 mx-5">
            <div class="d-flex mb-2">
                <h4 class="mt-0 header-title m{{getInvDir()}}-auto">  @lang('admin.projects')  </h4>
            </div>
        </div>
        <div class="card card-grey-rounded px-4 pt-4 mb-5 mx-5">
            <form action="{{route('get.home.index') }}" method="get" id="search-form" >
                <div class="row">
                
                    <div class="col-md-2 col-sm-12">
                        <div class="form-group row">
                            <label class="col-sm-12 col-form-label">@lang('admin.name')</label>
                            <div class="col-sm-12">
                               <input class="form-control" name="name" value="{{ app('request')->input('name') }}" type="search"  >
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-12">
                        <div class="form-group row">
                            <label class="col-sm-12 col-form-label">@lang('admin.region')</label>
                            <div class="col-sm-12">
                                <select class="input-select2 custom-select" id="region_ids" multiple="multiple" >
                                    <option value="">@lang('admin.notExist')</option>
                                    @foreach($regions as $region)
                                        @if($region_ids !== null)
                                            <option value="{{$region->id}}" @if( in_array($region->id , $region_ids)) selected @endif > {{$region->name .' - '. $region->city->name}} </option>
                                        @else
                                            <option value="{{$region->id}}"> {{$region->name .' - '. $region->city->name}} </option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-1">
                        <div class="form-group row">
                            <label class="col-sm-12 col-form-label">@lang('admin.numberOfRooms')</label>
                            <div class="col-sm-12">
                                <select class="custom-select" name="number_of_rooms_id"  >
                                    <option value="">@lang('admin.notExist')</option>
                                    @foreach($number_of_rooms as $number_of_room)
                                        <option value="{{$number_of_room->id}}" @if( app('request')->input('number_of_rooms_id') == $number_of_room->id) selected @endif> {{$number_of_room->name}} </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>



                      <div class="col-md-2 col-sm-12">
                        <div class="form-group row">
                            <label class="col-sm-12 col-form-label">@lang('admin.category')</label>
                            <div class="col-sm-12">
                                <select class="input-select2 custom-select" name="category_id_fk">
                                    <option value="">@lang('admin.notExist')</option>
                                    @foreach($category as $data)
                                    <option value="{{$data->id}}" @if( $data->id == $category_id_fk) selected @endif > {{$data->name}} </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>

                      <div class="col-md-2 col-sm-12">
                        <div class="form-group row">
                            <label class="col-sm-12 col-form-label">@lang('admin.instalment')</label>
                            <div class="col-sm-12">
                                <select class="input-select2 custom-select" name="instalment_id_fk">
                                    <option value="">@lang('admin.notExist')</option>
                                    @foreach($instalment as $data)
                                    <option value="{{$data->id}}"  @if($data->id == $instalment_id_fk) selected @endif > {{$data->name}} </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>
                      <div class="col-md-2 col-sm-12">
                        <div class="form-group row">
                            <label class="col-sm-12 col-form-label">@lang('admin.projectType')</label>
                            <div class="col-sm-12">
                                <select class="input-select2 custom-select" name="project_type">
                                    <option value="">@lang('admin.notExist')</option>
                                    <option value="resident" @if( app('request')->input('project_type') == 'invest_resident') selected @endif > @lang('admin.invest_resident') </option>
                                    <option value="resident" @if( app('request')->input('project_type') == 'resident') selected @endif > @lang('admin.resident') </option>
                                    <option value="hotel" @if( app('request')->input('project_type') == 'hotel') selected @endif> @lang('admin.hotel') </option>
                                    <option value="invest" @if( app('request')->input('project_type') == 'invest') selected @endif> @lang('admin.invest') </option>
                                </select>
                            </div>
                        </div>
                    </div>
                 <div class="col-md-1 col-sm-12">
                        <div class="form-group">
                            <label class="col-sm-12 col-form-label"></label>
                            <div class="col-sm-12 text-center">
                                <button class="btn btn-primary fontLight submit-btn mt-4"  type="submit">
                                        @lang('admin.search')
                                </button>  
                            </div>
                        </div>
                    </div>
                    


                </div>
        
        </form>
        </div>

        @foreach($results as $array)
            <div class="card px-4 pt-4 mb-5 mx-5">
                <div class="row">
                    <div class="col-md-4  col-sm-12">
                        <div class="row">
                            <div class="col-md-12">
                                @if($array[0]->project->name !== null)
                                <div class="form-group row mb-0">
                                    <label class="col-sm-4 col-form-label">@lang('admin.name')</label>
                                    <div class="col-sm-8">{{$array[0]->project->name}}</div>
                                </div>
                                @endif
                                @if($array[0]->project->region->name !== null)
                                <div class="form-group row mb-0">
                                    <label class="col-sm-4 col-form-label">@lang('admin.region')</label>
                                    <div class="col-sm-8">{{$array[0]->project->region->name}}</div>
                                </div>
                                @endif

                                @if($array[0]->project->project_type !== null)
                                <div class="form-group row mb-0">
                                    <label class="col-sm-4 col-form-label">@lang('admin.projectType')</label>
                                    @if($array[0]->project->project_type == 'hotel')
                                    <div class="col-sm-8">@lang('admin.hotel')</div>
                                    @elseif($array[0]->project->project_type == 'resident')
                                    <div class="col-sm-8">@lang('admin.resident')</div>
                                    @elseif($array[0]->project->project_type == 'invest')
                                    <div class="col-sm-8">@lang('admin.invest')</div>
                                     @elseif($array[0]->project->project_type == 'invest_resident')
                                    <div class="col-sm-8">@lang('admin.invest_resident')</div>
                                    @endif
                                </div>
                                @endif

                                 @if($array[0]->project->instalment_id_fk !== null)
                                <div class="form-group row mb-0">
                                    <label class="col-sm-4 col-form-label">@lang('admin.instalment')</label>
                                    <div class="col-sm-8">{{$array[0]->project->Instalment->name}}</div>
                                </div>
                                @endif

                   
                                    @if($array[0]->project->nationality !== null)
                                <div class="form-group row mb-0">
                                    <label class="col-sm-4 col-form-label">@lang('admin.nationality')</label>
                                    <div class="col-sm-8">{{$array[0]->project->nationality}}</div>
                                </div>
                                @endif  

                                @if($array[0]->project->prop_status !== null)
                                <div class="form-group row mb-0">
                                    <label class="col-sm-4 col-form-label">@lang('admin.propStatus')</label>
                                    <div class="col-sm-8"> @if($array[0]->project->prop_status == 'under_construction')
                                   @lang('admin.under_construction')
                                     @elseif($array[0]->project->prop_status == 'used')
                                     إعادة بيع
                                  @else
                                    @lang('admin.ready')
                                    @endif</div>
                                </div>
                                @endif  


                                    @if($array[0]->project->category_id_fk !== null)
                                <div class="form-group row mb-0">
                                    <label class="col-sm-4 col-form-label">@lang('admin.category')</label>
                                    <div class="col-sm-8">{{$array[0]->project->Category->name}}</div>
                                </div>
                                @endif  


                                                  @if($array[0]->project->notes !== null)
                                <div class="form-group row mb-0">
                                    <label class="col-sm-4 col-form-label">@lang('admin.notes')</label>
                                    <div class="col-sm-8">{{$array[0]->project->notes}}</div>
                                </div>
                                @endif  

                            </div>
                        </div>
                    </div>
                    <div class="col-md-8  col-sm-12"> 
                        <a href="/project/detials/{{$array[0]->project->id}}"  target="_blank" class="btn btn-primary mt-2">تصفح المشروع</a>

                        <button onclick="copyLinkProject('{{$array[0]->project->id}}')" class="btn btn-success mt-2">نسخ رابط المشروع</button>

                           @if($array[0]->project->description !== null)
                         <button onclick="copyDescription('{{$array[0]->project->id}}')" class="btn btn-warning mt-2">نسخ وصف المشروع </button>
                         @endif
                           @if(count($array[0]->project->images) > 0)
                           
                         <a href="{{ route('image.download', $array[0]->project->id) }}" class="btn btn-danger mr-2 ml-2  mt-2"> تحميل صور المشروع</a>
                            @endif

                        <table class="table table-bordered mb-0 data-table table-responsive">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    {!!create_th(trans('admin.numberOfRooms'))!!}
                                    {!!create_th(trans('admin.areaFrom'))!!}
                                    {!!create_th(trans('admin.areaTo'))!!}
                                    {!!create_th(trans('admin.priceFrom'))!!}
                                    {!!create_th(trans('admin.priceTo'))!!}

                                    {!!create_th(trans('admin.priceFromDollar'))!!}
                                    {!!create_th(trans('admin.priceToDollar'))!!}

                                </tr>
                            </thead>
                            <tbody>
                                @foreach($array as $row)
                                    <tr>
                                        <th scope="row">{{$loop->iteration}}</th>
                                        {!!create_td($row->numberOfRooms->name)!!}
                                        {!!create_td(number_format($row->area_from))!!}
                                        {!!create_td(number_format($row->area_to))!!}
                                       

                                       @if($row->price_from > 0 )
                                        {!!create_td(number_format($row->price_from))!!}
                                        {!!create_td(number_format($row->price_to))!!}
                                        <td>{{  number_format(round($row->price_from * $usd_curr/500) * 500)  }} </td>
                                        <td>{{  number_format(round($row->price_to * $usd_curr/500) * 500)  }} </td>
                                        @else

                                          <td>{{ number_format(round($row->price_from_dollar * $tr_curr/500) * 500 ) }} </td>
                                            <td>{{ number_format(round($row->price_to_dollar * $tr_curr/500) * 500 ) }} </td>
                                           {!!create_td(number_format($row->price_from_dollar))!!}
                                        {!!create_td(number_format($row->price_to_dollar))!!}
                                        @endif




                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
<style>
.more {display: none;}
</style>
                                <div class="col-md-12">

                                   @if($array[0]->project->description !== null)
                                <div class="form-group row mb-0">
                                    <label class="col-sm-1 col-form-label">@lang('admin.description')</label>
                                   
                                    <div class="col-sm-11">
                                    <input type="hidden" value="{!! $array[0]->project->description !!}" id="myInput_{{$array[0]->project->id}}" class="project_desc">
                                 

<p style="
    border: 1px solid #ddd;
    padding: 20px;
    border-radius: 5px;font-weight: 700;
">{{\Illuminate\Support\Str::limit($array[0]->project->description, 180)}}    <span id="dots_{{$array[0]->project->id}}">...</span><span class="more" id="more_{{$array[0]->project->id}}">{!! nl2br($array[0]->project->description) !!}</span></p>

<button onclick="myFunctionss({{$array[0]->project->id}})" id="myBtn_{{$array[0]->project->id}}" class="btn btn-primary mb-2">قراءة المزيد</button>
                                    </div>
                                </div>
                                @endif
</div>
    
                </div>
            </div>
        @endforeach
                    <div class="row mx-auto text-center">
            {!! $results->render() !!}
        </div>
@endsection

<style type="text/css">
    .project_desc{
        width: 100%;
        height: fit content;
        padding: 20px;
        border: 1px solid #ddd;
    border-radius: 0px;
    }
</style>
@section('script')
<script src="{{aurl()}}/plugins/inputmask/dist/jquery.inputmask.js"></script>
<script src="{{aurl()}}/plugins/inputmask/dist/inputmask.js"></script>
<script src="{{aurl()}}/plugins/inputmask/dist/bindings/inputmask.binding.js"></script>
<script src="{{aurl()}}/plugins/select2/js/select2.min.js"></script>
<script src="{{aurl()}}/assets/js/jquery.dataTables.min.js"></script>
<script src="{{aurl()}}/assets/js/dataTables.bootstrap4.min.js"></script>

<script>


    $(document).ready(function() {
$('.project_desc').keypress(function(e) {
    return false
});


        $(".number-format").inputmask();
        $('.input-select2').select2({
            @if(getDir() == 'r')
            dir: "rtl"
            @endif
        });

        var queryDict = {};
        location.search.substr(1).split("&").forEach(function(item) {queryDict[item.split("=")[0]] = item.split("=")[1]});
        delete queryDict["page"];
        var querystring = joinObject(queryDict,"=","&");
        $('.page-link').each(function(){
            $(this).attr('href',$(this).attr('href')+'&'+ querystring);
        });
    });

    $('.data-table').DataTable({
        "paging":   false,
        "info":     false,
        "searching": false
    });

    $('#search-form').submit(function() {
        $('<input />').attr('type', 'hidden')
            .attr('name', 'region_ids')
            .attr('value', $('#region_ids').val().join())
            .appendTo('#search-form');

        $('input[name="price_from"]').val($('input[id="price_from"]').val().replace(/\D/g, ""));
        $('input[name="price_to"]').val($('input[id="price_to"]').val().replace(/\D/g, ""));
    });

    function joinObject (object, glue, separator) { 
        if (glue == undefined)
            glue = '=';
        if (separator == undefined)
            separator = ',';    
        return $.map(Object.getOwnPropertyNames(object), function(k) { return [k, object[k]].join(glue) }).join(separator);
    }
 

</script>
<script type="text/javascript">
function copyDescription(event) {
    var copyText = document.getElementById("myInput_"+event);
    var $temp = $("<textarea>");
    var brRegex = /<br\s*[\/]?>/gi;

    $("body").append($temp);
    $temp.val($(copyText).val().replace(brRegex, "\r\n")).select();  
    document.execCommand("copy");
    $temp.remove();

    $("#alertmes").html("تم نسخ وصف المشروع  بنجاح !");
    $('#alertmes').show(0).delay(1000).hide(0);
}

function copyLinkProject(event) {
    var $temp = $("<input>");
    $("body").append($temp);
    $temp.val("https://search.deidin.com.tr/project/detials/"+event).select();
    document.execCommand("copy");
    $temp.remove();
    $("#alertmes").html("تم نسخ وصف المشروع  بنجاح !");
    $('#alertmes').show(0).delay(1000).hide(0);
}


</script>
<script>
function myFunctionss(event) {
  var dots = document.getElementById("dots_"+event);
  var moreText = document.getElementById("more_"+event);
  var btnText = document.getElementById("myBtn_"+event);

  if (dots.style.display === "none") {
    dots.style.display = "inline";
    btnText.innerHTML = "قراءة المزيد"; 
    moreText.style.display = "none";
  } else {
    dots.style.display = "none";
    btnText.innerHTML = "قراءة أقل"; 
    moreText.style.display = "inline";
  }
}
</script>

@endsection

