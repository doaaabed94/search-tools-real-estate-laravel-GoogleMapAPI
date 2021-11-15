@extends('main')

@section('content')

 
    <!-- end col -->
    <div class="col-lg-12">
        <div class="card m-b-20">
            <div class="card-body">

                <div class="d-flex mb-2">
                    <h4 class="mt-0 header-title m{{getInvDir()}}-auto">  @lang('admin.regions')  </h4>
                    <!--<h4 class="mt-0 header-title m{{getDir()}}-auto"> -->
                    <!--    <button type="button" data-toggle="modal" data-target=".add-modal" class="btn btn-secondary btn-sm waves-effect fontLight">@lang('admin.addNew')</button> -->
                    <!--</h4>-->
                </div>

                <div class="table-responsive">
                    <div id="coverloadingTable">
                        <img src="{{aurl()}}/loader.gif">
                    </div>
                    <table class="table table-bordered mb-0">
                        <thead>
                            <tr>
                                <th>#</th>
                                {!!create_th(trans('admin.name'))!!}
                                {!!create_th(trans('admin.city'))!!}
                                {!!create_th(trans('admin.meter_min_price'))!!}
                                {!!create_th(trans('admin.meter_max_price'))!!}
                            </tr>
                        </thead>
                        <tbody>

                            @if(count($regions) > 0)

                            @foreach($regions as $reg)
                            <tr>
                                <td scope="row">{{$loop->iteration}}</td>
                                {!!create_td($reg->name)!!}
                                {!!create_td($reg->city->name)!!}
                                
                                @foreach($region_max_min_price as $val)
                                     @if($val['region_id'] === $reg->id)
                                        {!!create_td($val['region_min_price'])!!}
                                        {!!create_td($val['region_max_price'])!!}
                                     @endif
                                @endforeach
                            </tr>
                            @endforeach

                            @else 
                            <tr> 
                                <td colspan="4" class="text-center"> 
                                    @lang('admin.msg.notFoundData') 
                                </td> 
                            </tr>
                        @endif


                        </tbody>
                    </table>

                    <div class="d-flex justify-content-center w-100 my-5">
                        {!! $regions->render() !!}
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- end col -->

@endsection