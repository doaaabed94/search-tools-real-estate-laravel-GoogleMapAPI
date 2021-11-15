<!doctype html>
<html lang="ar" dir="rtl">
<head>


<title>  @if($row->title_project !== null) {{$row->title_project}} |  @endif ديدن للعقارات والاستثمارات</title>


<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<meta name="resource-type" content="document">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="application-name" content="ديدن للعقارات والاستثمارات || Deidin for Real Estate and Investments">
<meta name="app-url" content="https://www.deidin.com.tr">
<meta name="robots" content="index, follow">
<meta name="author" content="ديدن للعقارات والاستثمارات">

<!-- End Facebook Pixel Code -->



<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:site" content="@Deidintr">
<meta name="twitter:creator" content="@Deidintr">

 @if($row->region->name !== null) <meta name="twitter:description" content="{{ $row->region->name .' - '. $row->region->city->name }}">
 <meta property="og:description" content="{{ $row->region->name .' - '. $row->region->city->name }}" />
 @endif

 @if($row->title_project !== null)
<meta name="twitter:title" content="{{$row->title_project}}">
<meta name="og:title" content="{{$row->title_project}}">
 @else
<meta name="twitter:title" content="أفضل فرص شراء عقار في اسطنبول  | عقارات تركيا | ديدن للعقارات والاستثمارات ">
<meta property="og:title" content="أفضل فرص شراء عقار في اسطنبول  | عقارات تركيا | ديدن للعقارات والاستثمارات " />
 @endif
 


@if($row->image_whatsapp  !== null)
<meta property="og:image"  itemprop="image" content="{{ getImg(PROJECT_IMG_PATH. $row->image_whatsapp) }}" />
<meta property="og:image:secure_url" content="{{ getImg(PROJECT_IMG_PATH. $row->image_whatsapp) }}" /> 
<meta property="og:image:width" content="100" /> 
<meta property="og:image:height" content="100" />
@endif



<meta property="og:type" content="flat" />
<meta property="og:url" content="https://search.deidin.com.tr/project/detials/{{ $row->id }}">
<!-- Fonts --> 
<link href="https://fonts.googleapis.com/css?family=Cairo:400,600,700&display=swap&subset=arabic" rel="stylesheet">
<link rel="stylesheet" href="https://deidin.com.tr/front/plugins/fontawesome/css/all.css">
<link rel="icon" type="image/x-icon" href="https://deidin.com.tr//uploads/settings/favicon.png">
<link rel="stylesheet" href="https://deidin.com.tr/front/css/bootstrap.min.css">
<link rel="stylesheet" href="https://deidin.com.tr/front/css/bootstrap-rtl.css">
<link rel="stylesheet" href="https://deidin.com.tr/front/plugins/animate/animate.min.css">
<link rel="stylesheet" href="https://deidin.com.tr/front/css/main.min.css"> 
<link rel="stylesheet" href="https://deidin.com.tr/front/plugins/owlcarousel/dist/assets/owl.carousel.min.css">
<link rel="stylesheet" href="https://deidin.com.tr/front/plugins/owlcarousel/dist/assets/owl.theme.default.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/16.0.8/css/intlTelInput.css">


</head>

<style type="text/css">
    #pro-brief-section #pro-brief-info .pro-brief-info-item {
    border: 1px solid #b97c1d;
    border-radius: 25px;
    /* max-width: 150px; */
    width: fit-content;
    padding: 10px 25px !important;
}
#pro-brief-section {
    margin-top: 122px;
}
@media screen and (max-width:768px){
  #pro-brief-section #pro-brief-info .pro-brief-info-item{
    border:unset;
  }

  .breadcrumb-div{
    display: none;
  }
}
#pro-container #galleryTab .nav-link {
    color: #b97c1d;
    color: #fff;
    background-color: #52360b;
    border-color: #dee2e6 #dee2e6 #fff;
}
</style>

<body class="custom-header">

<div class="fixed-top">

<div class="top-nav">
<div class="container">
<div class=" d-flex align-items-center justify-content-between">
<ul class="top-nav-menu mb-0 list-unstyled list-inline">
<li class="list-inline-item">
<a href="https://deidin.com.tr/ar/investment">
استثمار                        </a>        
</li>

<li class="list-inline-item">
<a href="https://deidin.com.tr/ar/citizenship">
الجنسية التركية                        </a>        
</li>

<li class="list-inline-item">
<a href="#" data-toggle="modal" data-target="#catalogModal" id="catalogue-btn">
كتالوج ديدن                        </a>        
</li>
</ul>

<ul class="top-nav-icons mb-0 list-unstyled list-inline">
<li class="list-inline-item px-3">
<a href="tel:00905550668000" class="top-nav-phone text-decoration-none">
<i class="fas fa-phone pl-2"></i>
00905550668000
</a>
</li>

<li class="list-inline-item dropdown" style="direction: ltr">
<a class="dropdown-toggle disabled top-nav-lang" href="#" id="lang-dropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
AR                                                    </a>
<div class="dropdown-menu" aria-labelledby="lang-dropdown">
<a class="dropdown-item" href="https://deidin.com.tr//ar">
AR                            </a>
<a class="dropdown-item" href="https://deidin.com.tr//en">
EN                            </a>
<a class="dropdown-item" href="https://deidin.com.tr//zh">
ZH                            </a>
</div>
</li>

<li class="list-inline-item dropdown" style="direction: ltr">
<a class="dropdown-toggle disabled top-nav-curr text-uppercase" href="#" id="curr-dropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

TRY ₺
</a>
<div class="dropdown-menu" aria-labelledby="curr-dropdown">
<a class="dropdown-item" href="https://deidin.com.tr/ar/currency/try">
TRY ₺
</a>
<a class="dropdown-item" href="https://deidin.com.tr/ar/currency/usd">
USD $
</a>
<a class="dropdown-item" href="https://deidin.com.tr/ar/currency/cny">
CNY ¥
</a>
</div>
</li>
</ul>
</div>
</div>
</div>

<nav class="navbar navbar-expand-lg navbar-light  navbar-grey ">
<div class="container">
<a class="navbar-brand" href="https://deidin.com.tr/ar">
<img src="https://deidin.com.tr/uploads/settings/ST31YgwcP5DvNNutzS5846Eff5seaysjUUPaiEFx.png" class="align-top" alt="">
</a>

<ul class="mb-0 list-unstyled list-inline">
<li class="list-inline-item dropdown curr-dropdown-li-mh">
<a class=" top-nav-mobile-curr navbar-toggler w-100" href="#" id="curr-dropdown-mh" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<img src="https://deidin.com.tr/front/img/curr-icon.svg" alt="">
</a>
<div class="dropdown-menu" aria-labelledby="curr-dropdown-mh">
<a class="dropdown-item" href="https://deidin.com.tr/ar/currency/try">
TRY ₺
</a>
<a class="dropdown-item" href="https://deidin.com.tr/ar/currency/usd">
USD $
</a>
<a class="dropdown-item" href="https://deidin.com.tr/ar/currency/cny">
CNY ¥
</a>
</div>
</li>

<li class="list-inline-item">
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-dropdown" aria-controls="navbar-dropdown" aria-expanded="false" aria-label="Toggle navigation">
<span class="navbar-toggler-icon"></span>
</button>
</li>

</ul>

<div class="collapse navbar-collapse" id="navbar-dropdown">
<ul class="navbar-nav ml-auto">
<li class="nav-item active">
<a class="nav-link" href="https://deidin.com.tr/ar">الرئيسية</a>
</li>


<li class="nav-item dropdown">
<a class="nav-link dropdown-toggle disabled" href="#" id="about-dropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
فرص مميزة                        </a>
<div class="dropdown-menu" aria-labelledby="about-dropdown">
<a class="dropdown-item" href="https://deidin.com.tr/ar/properties/flats" >شقق </a>
<a class="dropdown-item" href="https://deidin.com.tr/ar/properties/villas">فلل</a>
</div>
</li>



<li class="nav-item ">
<a class="nav-link" href="https://deidin.com.tr/ar/projects">مشاريع اسطنبول</a>
</li>
<!--
<li class="nav-item dropdown">
<a class="nav-link dropdown-toggle disabled" href="#" id="rows-dropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
عقارات اسطنبول                        </a>
<div class="dropdown-menu" aria-labelledby="rows-dropdown">
<a class="dropdown-item" href="https://deidin.com.tr/ar/properties">فرص مميزة</a>
<a class="dropdown-item" href="https://deidin.com.tr/ar/projects">مشاريع اسطنبول</a>
</div>
</li>
-->
<li class="nav-item">
<a class="nav-link" href="https://deidin.com.tr/ar/cities">دليل المناطق</a> 
</li> 

<li class="nav-item">
<a class="nav-link" href="https://deidin.com.tr/ar/services">الخدمات</a> 
</li> 

<li class="nav-item">
<a class="nav-link" href="https://deidin.com.tr/ar/blog">المدونة</a> 
</li> 

<li class="nav-item">
<a class="nav-link" href="https://deidin.com.tr/ar/playlists">قناة ديدن</a> 
</li> 
<!--
<li class="nav-item">
<a class="nav-link" href="https://deidin.com.tr/ar/faq">الأسئلة الشائعة</a> 
</li> 
-->
<li class="nav-item dropdown">
<a class="nav-link dropdown-toggle disabled" href="#" id="about-dropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
من نحن                        </a>
<div class="dropdown-menu" aria-labelledby="about-dropdown">
<a class="dropdown-item" href="https://deidin.com.tr/ar/about-us">عن الشركة</a>
<a class="dropdown-item" href="https://deidin.com.tr/ar/achievements">إنجازات الشركة</a>

</div>
</li>

<li class="nav-item">
<a class="nav-link" href="https://deidin.com.tr/ar/contact-us"> اتصل بنا  </a>
</li>

<li class="nav-item nav-only-mobile">
<a class="nav-link" href="https://deidin.com.tr/ar/investment"> استثمار </a>
</li>

<li class="nav-item nav-only-mobile">
<a class="nav-link" href="#" data-toggle="modal" data-target="#catalogModal"> كتالوج ديدن </a>
</li>

<li class="nav-item nav-only-mobile">
<a class="nav-link" href="#"> الجنسية التركية </a>
</li>

<li class="nav-item nav-only-mobile language-buttons-div">
<div class="row">
<div class="col-4">
<a class="btn  selected " href="https://deidin.com.tr//ar">
<img src="https://deidin.com.tr/front/img/ar-flag.png" alt="">
<label>العربية</label>
</a>
</div>
<div class="col-4">
<a class="btn " href="https://deidin.com.tr//en">
<img src="https://deidin.com.tr/front/img/us-flag.png" alt="">    
<label>الانجليزية</label>
</a>
</div>
<div class="col-4">
<a class="btn " href="https://deidin.com.tr//zh">
<img src="https://deidin.com.tr/front/img/zh-flag.png" alt="">  
<label>الصينية</label>
</a>
</div>
</div>
</li>

</ul>
</div>
</div>
</nav>

</div>


<div class="modal fade" id="catalogModal" tabindex="-1" role="dialog" aria-labelledby="catalogModalLabel" aria-hidden="true">
<div class="modal-dialog modal-md modal-dialog-centered" role="document">
<div class="modal-content">
<div class="modal-body">
<p class="text-center font-weight-semibold">تحميل كتالوج ديدن</p>

<div class="text-center">
<a href="https://deidin.com.tr/ar/catalog/download" class="btn" id="catalog-download-btn">
تحميل                        <i class="fas fa-download mr-3"></i>
</a>
</div>
</div>
</div>
</div>
</div>


<div id="pro-brief-section" class="mb-4">
<div class="container h-100">
<div class="row h-100">
<div class="pro-brief-col col-lg-12 col-md-12 col-sm-12 d-flex flex-column justify-content-around py-2">


<div id="pro-brief-info" class="container px-0">
<div class="row">


 @if($row->region->name !== null)
<div class="col-lg-4 col-md-6 col-12 mb-2 px-sm-0 d-sm-block d-flex justify-content-center">
<p>العنوان </p>
<div class="pro-brief-info-item d-flex  p-2 flex-fill">
<img src="https://deidin.com.tr/front/img/pro-brief-location.svg" alt="location icon" class="ml-2">
<p class="mb-0">
{{ $row->region->name .' - '. $row->region->city->name }}
</p>
</div>  
</div>
@endif


@if($row->project_type !== null)
<div class="col-lg-2 col-md-6 col-12 mb-2 px-sm-0 d-sm-block d-flex justify-content-center">
<p>النمط </p>
<div class="pro-brief-info-item d-flex  p-2 flex-fill">
<p class="mb-0">
      @if($row->project_type == 'hotel')
                                    @lang('admin.hotel')
                                    @elseif($row->project_type == 'resident')
                                    @lang('admin.resident')
                                    @elseif($row->project_type == 'invest')
                                    @lang('admin.invest')
                                     @elseif($row->project_type == 'invest_resident')
                                    @lang('admin.invest_resident')
                                    @endif
</p>
</div>  
</div>
@endif

 @if($row->payment !== null)
<div class="col-lg-2 col-md-6 col-12 mb-2 px-sm-0 d-sm-block d-flex justify-content-center">
<p>@lang('admin.payment')</p>
<div class="pro-brief-info-item d-flex  p-2 flex-fill">
<p class="mb-0"> 
 @if($row->payment == 'cash')
@lang('admin.cash')
 @elseif($row->payment == 'install')
 @lang('admin.cash')
  @elseif($row->payment == 'cash_install')
 @lang('admin.cash_install')
@endif
</p>
</div>
</div>
@endif



 @if($row->nationality !== null)
<div class="col-lg-2 col-md-6 col-12 mb-2 px-sm-0 d-sm-block d-flex justify-content-center">
<p>@lang('admin.nationality')</p>
<div class="pro-brief-info-item d-flex  p-2 flex-fill">
<p class="mb-0"> 
  @if($row->nationality == 'YES')
نعم
 @else
 لا
@endif
</p>
</div>
</div>
@endif
 @if($row->prop_status !== null)
<div class="col-lg-2 col-md-6 col-12 mb-2 px-sm-0 d-sm-block d-flex justify-content-center">
<p>@lang('admin.propStatus')</p>
<div class="pro-brief-info-item d-flex  p-2 flex-fill">
<p class="mb-0"> 
 @if($row->prop_status == 'under_construction')
                                   @lang('admin.under_construction')
                                    @elseif($row->prop_status == 'used')
                                     إعادة بيع
                                    @else
                                    @lang('admin.ready')
                                    @endif


</p>
</div>  
</div>
@endif



</div>
</div>
</div>


</div>
</div>
</div>

<div id="pro-container" class="container mb-5">
<div class="row">
<div class="col-lg-10 col-12 m-auto">
   {{-- Carousel --}}
      <div id="carousel-div" class="card card-grey-rounded p-2">
          @if(count($row->video) > 0 || count($row->images) > 0 || ($row->video_link !== null and   $row->video_link !== "0") )
        <ul class="nav nav-tabs flex-column flex-sm-row pr-0 pb-3" id="galleryTab" role="tablist">

            @if(count($row->video) > 0 ||  ($row->video_link !== null and   $row->video_link !== "0") )
          <li class="flex-sm-fill text-sm-center nav-item">
            <a class="nav-link active font-weight-semibold" id="video-gallery-tab" data-toggle="tab" href="#video-gallery" role="tab" aria-controls="video-gallery" aria-selected="true">
              @lang('admin.video')
            </a>
          </li>
  @endif
  
         @if(count($row->images) > 0 ) 
         <li class="flex-sm-fill text-sm-center nav-item">
            <a class="nav-link  font-weight-semibold" id="images-gallery-tab" data-toggle="tab" href="#images-gallery" role="tab" aria-controls="images-gallery" aria-selected="false">
              @lang('admin.images')
            </a>
          </li>
  @endif
 
        </ul>
      @endif

        <div class="tab-content" id="galleryTabContent">
        <div class="tab-pane fade @if(count($row->video) == 0 and ($row->video_link == null ||   $row->video_link == "0"))  show active @endif" id="images-gallery" role="tabpanel" aria-labelledby="images-gallery-tab">  
        @if(count($row->images) > 0)
          <div class="mb-2 text-center">
              <div class="row m-0">
                <div class="col-1 p-0">
                  @if(count($row->images) > 1)
                  <a class="previous">
                     <img src="https://deidin.com.tr/front/img/back.png" />
                  </a>
                  @endif
                </div>
                <div class="col-10">
                  <a id="carousel-main-image-link" type="button" data-toggle="modal" data-target="#imageModal">
                    <img src="{{ getImg(PROJECT_IMG_PATH. $row->images[0]->img) }}" alt="{{ $row->alt }}" title="{{ $row->title }}" id="carousel-main-image">
                  </a>
                </div>
                <div class="col-1 p-0">
                  @if(count($row->images) > 1)
                  <a class="next">
                     <img src="https://deidin.com.tr/front/img/next.png" />
                  </a>
                  @endif
                </div>
              </div>
            </div>
        @endif

        @if(count($row->images) > 1)
        <div id="project-owl-carousel" class="owl-carousel owl-theme">
          @foreach ($row->images as $img)
            <div class="item">
              <img src="{{ getImg(PROJECT_IMG_PATH. $img->img) }}" alt="{{ $row->alt }}" title="{{ $row->title }}">
            </div>
          @endforeach
        </div>
        @endif
 </div>
          

         @if(count($row->video) > 0 || ($row->video_link !== null and   $row->video_link !== "0") )
          <div class="tab-pane fade show active " id="video-gallery" role="tabpanel" aria-labelledby="video-gallery-tab">
            @if($row->video_link !== null and   $row->video_link !== "0" )
            <iframe src="{{$row->video_link }}" id="pro-video"></iframe>
            @else
            <iframe src="{{ getImg(PROJECT_VIDEO_PATH. $row->video[0]->video) }}" id="pro-video"></iframe>
            @endif
          </div>
        @endif
        </div>
      </div>



<div class="container-fluid px-0">
<div class="row">
 @if($row->description !== null)

<div id="main-title" class="my-4">
<p class="mb-0">تفاصيل العقار</p>
</div>
<div class="col-lg-12 col-md-6 col-12">
<div id="services-div" class="card card-grey-rounded px-4 py-5 mb-4">
<div class="d-flex flex-column justify-content-around">
{!! nl2br($row->description) !!}
</div>
</div>
</div>
@endif
@if($array !== null)
<div class="col-lg-12 col-md-6 col-12">
<div id="services-div" class="card card-grey-rounded px-4 py-5 mb-4">
                        <table class="table card-grey-rounded table-bordered mb-0 data-table">
                            <thead>
                                <tr>
                                    {!!create_th(trans('admin.numberOfRooms'))!!}
                                    {!!create_th(trans('admin.priceFrom'))!!}
                                    {!!create_th(trans('admin.priceFromDollar'))!!}
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($array as $r)
                                    <tr>
                                        {!!create_td($r->numberOfRooms->name)!!}
                                                @if($r->price_from > 0 )
                                        {!!create_td(number_format($r->price_from))!!}
                                        <td>{{  number_format(round($r->price_from * $usd_curr/500) * 500)  }} </td>
                                        @else
                                          <td>{{ number_format(round($r->price_from_dollar * $tr_curr/500) * 500 ) }} </td>
                                           {!!create_td(number_format($r->price_from_dollar))!!}
                                        @endif
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
</div>
</div>
@endif
 @if($row->notes !== null)

<div class="col-lg-12 col-md-6 col-12">
<div id="services-div" class="card card-grey-rounded px-4 py-5 mb-4">
<div class="d-flex flex-column justify-content-around">
{!! nl2br($row->notes) !!}
</div>
</div>
</div>
@endif
</div>
</div>

<div class="col-md-12">
<p style="color: red;font-size: 20px;text-align: center;font-weight: 800;"> 
(* الاسعار في تغير مستمر لطفا راجع استشاري المبيعات للتأكد من الأسعار  *)

<br>
 
(*الأسعار أعلاه هي أسعار مبدأية من المشروع*)


</p>
</div>
</div>

</div>
</div>



<div class="modal fade" id="imageModal" tabindex="-1" role="dialog" aria-labelledby="imageModalLabel" aria-hidden="true">
<div class="modal-dialog modal-lg" role="document">
<div class="modal-content">
<div class="modal-body">
<img id="modal-image" src="" alt="alt" title="title">
<i class="fas fa-chevron-right" id="carousel-main-image-right"></i>
<i class="fas fa-chevron-left" id="carousel-main-image-left"></i>
</div>
</div>
</div>
</div>

<footer>
<div id="footer-main" style="background: url('https://deidin.com.tr/front/img/footer-bg.png');">
<div class="container py-5">
<div class="row">
<div class="col-lg-5 col-md-12 col-12 footer-important-links">
<p class="footer-title font-weight-bold">روابط مهمة</p>
<div class="container-fluid">
<div class="row">
<div class="col-md-4 col-4">
<ul class="list-unstyled">
<li class="footer-element mb-4">
<a href="https://deidin.com.tr/ar" class="">
الرئيسية                                        </a>
</li>

<li class="footer-element mb-4">
<a href="https://deidin.com.tr/ar/properties" class="">
فرص مميزة                                        </a>
</li>

<li class="footer-element mb-4">
<a href="https://deidin.com.tr/ar/projects" class="">
مشاريع اسطنبول                                        </a>
</li>
</ul>
</div>
<div class="col-md-4 col-4">
<ul class="list-unstyled">
<li class="footer-element mb-4">
<a href="https://deidin.com.tr/ar/blog" class="">
المدونة                                        </a>
</li>

<li class="footer-element mb-4">
<a href="https://deidin.com.tr/ar/about-us" class="">
من نحن                                        </a>
</li>

<li class="footer-element mb-4">
<a href="https://deidin.com.tr/ar/contact-us" class="">
اتصل بنا                                         </a>
</li>
</ul>
</div>
<div class="col-md-4 col-4 footer-social-links">
<ul class="list-unstyled">
<li class="footer-element mb-4">
<a href="https://deidin.com.tr/ar/investment" class="">
استثمار                                        </a>
</li>

<li class="footer-element mb-4">
<a href="#" class="" data-toggle="modal" data-target="#catalogModal">
كتالوج ديدن                                        </a>
</li>

<li class="footer-element mb-4">
<a href="https://deidin.com.tr/ar/citizenship" class="">
الجنسية التركية                                        </a>
</li>
</ul>
</div>
</div>
</div>
</div>

<div class="col-lg-4 col-md-6 col-12 footer-contact-links">
<p class="footer-title font-weight-bold">تواصل معنا</p>
<div>
<p class="footer-element mb-4">
<i class="fas fa-envelope pl-1"></i> 
<a href="mailto:info@deidin.com.tr">
info@deidin.com.tr
</a>
</p>

<p class="footer-element mb-4">
<i class="fas fa-phone pl-1"></i>
<a href="tel:00905550668000">
<span dir="ltr">
00905550668000
</span> 
</a>
</p>

<p class="footer-element mb-4">
<i class="fas fa-map-marker-alt pl-1"></i> 
<a href="#">
Ziya Gökalp Mahallesi, Mall of istanbul, office 108, 34490 Başakşehir
</a>
</p>
</div>
</div>

<div class="col-lg-3 col-md-6 col-12 footer-social-links">
<p class="footer-title font-weight-bold">التواصل الاجتماعى</p>

<p>
<a href="https://www.facebook.com/Deidintr/" target="_blank" class="footer-social pl-1">
<img src="https://deidin.com.tr/front/img/Facebook.png" alt="" class="mb-3">
</a>
<a href="https://www.twitter.com/Deidintr/" target="_blank" class="footer-social pl-1">
<img src="https://deidin.com.tr/front/img/Twitter.png" alt="" class="mb-3">
</a>
<a href="https://www.instagram.com/Deidintr/" target="_blank" class="footer-social pl-1">
<img src="https://deidin.com.tr/front/img/Instagram.png" alt="" class="mb-3">
</a>
<a href="https://www.youtube.com/channel/UCT4B1MfmbP7ywAt7fvPnY8Q" target="_blank" class="footer-social pl-1">
<img src="https://deidin.com.tr/front/img/youtube.png" alt="" class="mb-3">
</a>
<!-- <a href="https://api.whatsapp.com/send?phone=905550668000" target="_blank" class="footer-social pl-1">
<img src="https://deidin.com.tr/front/img/whatsapp.png" alt="" class="mb-3">
</a> -->
<!-- <a href="" target="_blank" class="footer-social pl-1">
<img src="https://deidin.com.tr/front/img/linkedin.png" alt="" class="mb-3">
</a> -->
</p>
</div>
</div>    
</div>
</div>
<div id="footer-copyright" >
<div class="container d-flex align-items-center justify-content-center h-100">
<p class="mb-0">
جميع الحقوق محفوظة 2021                © 
<span>ديدن - <a href="/privacy-policy" style="color: #ddd;">سياسة الخصوصية </a></span> 
</p>
</div>
</div>
</footer>

<div class="modal fade" id="whatsappModal" tabindex="-1" role="dialog" aria-labelledby="whatsappModalLabel" aria-hidden="true">
<div class="modal-dialog modal-md modal-dialog-centered" role="document">
<div class="modal-content">
<div class="modal-body">
<p class="text-center font-weight-semibold">إرسال رسالة إلى رقم  905550668000</p>

<div class="text-center">
<a href="https://api.whatsapp.com/send?phone=905550668000" class="btn" id="whatsapp-send-btn">
أرسل                        <i class="fas fa-reply mr-3"></i>
</a>
</div>
</div>
</div>
</div>
</div>

<div class="modal fade" id="langModal" tabindex="-1" role="dialog" aria-labelledby="langModalLabel" aria-hidden="true">
<div class="modal-dialog modal-md modal-dialog-centered" role="document">
<div class="modal-content">
<div class="modal-body">
<p class="text-center font-weight-semibold">تغيير اللغة</p>

<div class="text-center">
<a class="lang-link font-weight-bold  lang-link-selected " href="https://deidin.com.tr//ar">
AR                    </a>
<a class="lang-link font-weight-bold " href="https://deidin.com.tr//en">
EN                    </a>
<a class="lang-link font-weight-bold " href="https://deidin.com.tr//zh">
ZH                    </a>    
</div>
</div>
</div>
</div>
</div>

<div class="modal fade" id="currModal" tabindex="-1" role="dialog" aria-labelledby="currModalLabel" aria-hidden="true">
<div class="modal-dialog modal-md modal-dialog-centered" role="document">
<div class="modal-content">
<div class="modal-body">
<p class="text-center font-weight-semibold">تغيير العملة</p>

<div class="text-center"  style="direction: ltr;" >
<a class="curr-link font-weight-bold  curr-link-selected " href="https://deidin.com.tr/ar/currency/try">
TRY (₺)
</a>
<a class="curr-link font-weight-bold " href="https://deidin.com.tr/ar/currency/usd">
USD ($)
</a> 
</div>
</div>
</div>
</div>
</div>


<a type="button" href="#" id="whatsapp-btn" title="Go to top" data-toggle="modal" data-target="#whatsappModal">
<!-- <i class="fab fa-whatsapp"></i> -->
<img src="https://deidin.com.tr/front/img/wtsp.svg" />
</a>

<!-- <a type="button" class="btn" href="#" id="lang-btn" title="Go to top" data-toggle="modal" data-target="#langModal">
<img src="https://deidin.com.tr/front/img/language.svg" />
</a>

<a type="button" class="btn" href="#" id="curr-btn" title="Go to top" data-toggle="modal" data-target="#currModal">
<img src="https://deidin.com.tr/front/img/currency.svg" />
</a> -->



<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

<script src="https://deidin.com.tr/front/js/bootstrap.min.js"></script>


<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>


<script src="https://deidin.com.tr/front/plugins/wow/wow.min.js"></script>



<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PPVF9F9"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<script>
(function(w,d,u){
var s=d.createElement('script');s.async=true;s.src=u+'?'+(Date.now()/60000|0);
var h=d.getElementsByTagName('script')[0];h.parentNode.insertBefore(s,h);
})(window,document,'https://cdn.bitrix24.in/b12836583/crm/site_button/loader_6_rt2xzm.js');
</script>



<script src="https://deidin.com.tr/front/plugins/owlcarousel/dist/owl.carousel.min.js"></script>


<script src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/16.0.8/js/intlTelInput.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/16.0.8/js/utils.js"></script>



<script src="https://deidin.com.tr/front/js/custom.min.js"></script>




<script src="https://deidin.com.tr/front/plugins/owlcarousel/dist/owl.carousel.min.js"></script>


<script src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/16.0.8/js/intlTelInput.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/16.0.8/js/utils.js"></script>

<?php $project_plan_path = asset('uploads/project/') ?>
<script>

$('#project-owl-carousel').owlCarousel({
    rtl:true,
    loop:false,
    margin:10,
    nav:false,
    autoplay:false,
    autoplayTimeout:3000,

    responsive:{
        0:{
            items:3
        },
        992:{
            items:4
        }
    }
})

let imagesMax = []
@foreach($row->images as $img)
  imagesMax.push('{{ getImg(PROJECT_IMG_PATH. $img->img) }}')
@endforeach


$('#project-owl-carousel .item').click(function(e){
  e.preventDefault();
  let src = $(this).find('img').attr('src')
  $('#carousel-main-image').attr('src', src)

    $("#carousel-main-image").fadeOut(200, function() {
            $("#carousel-main-image").attr('src', src);
    }).fadeIn(200);
})

let imgIndex = 0

$('#carousel-main-image-link').click(function(e){
  let img = $('#carousel-main-image').attr('src')
  imgIndex = imagesMax.indexOf(img)
  let alt = $('#carousel-main-image').attr('alt')
  let title = $('#carousel-main-image').attr('title')
  document.getElementById('modal-image').src = img;
  document.getElementById('modal-image').alt = alt;
  document.getElementById('modal-image').title = title;
  $('#imageModal').modal('show')
  if(imgIndex == imagesMax.length-1) 
  {
    $('#carousel-main-image-left').hide()
  }
  if(imgIndex == 0) 
  {
    $('#carousel-main-image-right').hide()
  }
})

$('#carousel-main-image-left').click(function(){
  imgIndex++
  document.getElementById('modal-image').src = imagesMax[imgIndex];

  if(imgIndex !== 0) 
  {
    $('#carousel-main-image-right').show()
  }

  if(imgIndex == imagesMax.length-1) 
  {
    $(this).hide()
  }
})

$('#carousel-main-image-right').click(function(){
  imgIndex--
  document.getElementById('modal-image').src = imagesMax[imgIndex];

  if(imgIndex !== imagesMax.length-1) 
  {
    $('#carousel-main-image-left').show()
  }

  if(imgIndex == 0) 
  {
    $(this).hide()
  }
})


let mainImgIndex = 0

$('#carousel-div .next').on('click',function(){
  if(mainImgIndex == imagesMax.length-1) 
  {
    mainImgIndex = 0
  }
  else{
    mainImgIndex++
  }
  document.getElementById('carousel-main-image').src = imagesMax[mainImgIndex];
  
});

$('#carousel-div .previous').on('click',function(){
  if(mainImgIndex == 0) 
  {
    mainImgIndex = imagesMax.length-1
  }
  else{
    mainImgIndex--
  }
  document.getElementById('carousel-main-image').src = imagesMax[mainImgIndex];
});


// setFormHeight()
setTimeFinanceHeight()
setTransportServiceHeight()

document.querySelectorAll('.modal-button').forEach(item => {
  item.addEventListener('click', e => {
    let img = e.target.getAttribute('data-img')
    let alt = e.target.getAttribute('data-alt')
    let title = e.target.getAttribute('data-title')
    document.getElementById('modal-image').src = '{{ $project_plan_path }}' + '/' + img;
    document.getElementById('modal-image').alt = alt;
    document.getElementById('modal-image').title = title;
    $('#imageModal').modal('show')
  })
})


// function setFormHeight() {
//   if ($(window).width() >= 992) {  
//     let carouselHeight = $('#carousel-div').height()
//     $('#order-form-div').outerHeight(carouselHeight + 16)
//   } 
// }

function setTimeFinanceHeight() {
  if ($(window).width() >= 768) {  
    let timeHeight = $('#time-div').outerHeight()
    let financeHeight = $('#finance-div').outerHeight()
    if(timeHeight > financeHeight) 
      $('#finance-div').outerHeight(timeHeight)
    else 
      $('#time-div').outerHeight(financeHeight)
  }
}

function setTransportServiceHeight() {
  if ($(window).width() >= 768 && $(window).width() < 992) {  
    let transportHeight = $('#transports-div').outerHeight()
    let serviceHeight = $('#services-div').outerHeight()
    if(transportHeight > serviceHeight) 
      $('#services-div').outerHeight(transportHeight)
    else 
      $('#transports-div').outerHeight(serviceHeight)
  }
}


// $(window).resize(setFormHeight);
$(window).resize(setTimeFinanceHeight);
$(window).resize(setTransportServiceHeight);






</script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-16GK7Z4N1D"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-16GK7Z4N1D');
</script>
<style type="text/css">
.pro-brief-info-item {
    width: 100% !important;
    max-width: 90% !important;
}

@media screen and (max-width:575px) {
.card-grey-rounded li {
  width: 100%;
}
}
</style>
</body>

</html>