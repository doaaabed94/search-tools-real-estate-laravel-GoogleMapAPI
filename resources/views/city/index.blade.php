@extends('main')

@section('content')

 
    <!-- end col -->
    <div class="col-lg-12">
        <div class="card m-b-20">
            <div class="card-body">

                <div class="d-flex mb-2">
                    <h4 class="mt-0 header-title m{{getInvDir()}}-auto">  @lang('admin.cities')  </h4>
                    <h4 class="mt-0 header-title m{{getDir()}}-auto"> 
                        <button type="button" data-toggle="modal" data-target=".add-modal" class="btn btn-secondary btn-sm waves-effect fontLight">@lang('admin.addNew')</button> 
                    </h4>
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
                                {!!create_th(trans('admin.actions'))!!}
                            </tr>
                        </thead>
                        <tbody>

                            @if(count($rows) > 0)

                            @foreach($rows as $row)
                            <tr>
                                <td scope="row">{{$loop->iteration}}</td>
                                {!!create_td($row->name)!!}
                                <td class="text-center">
                                    <a href="javascript:void(0);"  data-id="{{$row->id}}" data-name="{{$row->name}}" class="m-{{getDir()}}-15 text-muted edit-row" data-toggle="modal" data-target=".edit-modal" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit"><i class="mdi mdi-pencil font-18"></i></a>
                                    <a href="javascript:void(0);" data-route="{{route('get.city.delete',[$row->id])}}" class="text-muted  delete-row " data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete"><i class="mdi mdi-close font-18"></i></a>
                                </td>
                            </tr>
                            @endforeach

                            @else 
                            <tr> 
                                <td colspan="3" class="text-center"> 
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


    @include('city.forms.add')
    @include('city.forms.edit')

@endsection

<?php $routeAdd = route('post.city.store'); ?>
<?php $routeEdit = route('put.city.update'); ?>
@section('script')
    @include('inc.ajax.store')
    @include('inc.ajax.delete')

    <script>
        $(document).on("click",".edit-row",function(){
            
            var el = $(this);
            $("#name").val(el.attr("data-name"));
            $("#id").val(el.attr("data-id"));
        }); 

    </script>

    @include('inc.ajax.update')

@endsection