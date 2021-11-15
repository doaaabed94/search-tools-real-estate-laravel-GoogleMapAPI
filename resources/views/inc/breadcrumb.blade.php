 <!-- Page-Title -->
 <div class="row">
    <div class="col-sm-12">
        <div class="page-title-box">
        <h4 class="page-title pull-right">
            @if(isset($thirdName))
                {{$thirdName}}
            @else 
                @if(isset($secondName)) {{$secondName}} @endif
            @endif
        </h4>

            <div class="btn-group pull-left">
                <ol class="breadcrumb hide-phone p-0 m-0">
                    <li class="breadcrumb-item"><a href="{{route('get.home.index')}}">@if(isset($basePage)) {{$basePage}} @endif </a></li>
                    @if(isset($secondName)) 
                        @if(isset($thirdName))
                            <li class="breadcrumb-item">
                                <a href="{{$routeSecond}}">  
                                    {{$secondName}}
                                </a>
                            </li>
                            @else 
                            <li class="breadcrumb-item  active">
                                <a href="#">  
                                    {{$secondName}}
                                </a>
                            </li>
                        @endif
                    @endif
                    @if(isset($thirdName)) 
                    <li class="breadcrumb-item active">{{$thirdName}} </li>
                    @endif
                </ol>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-sm-12">
        <hr>
    </div>
</div>
<!-- end page title end breadcrumb -->