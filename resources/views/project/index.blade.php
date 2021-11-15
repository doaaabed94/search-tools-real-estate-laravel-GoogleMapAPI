@extends('main')

@section('content')

 
    <!-- end col -->
    <div class="col-lg-12">
        <div class="card m-b-20">
            <div class="card-body">
                <div class="d-flex mb-2">
                    <h4 class="mt-0 header-title m{{getInvDir()}}-auto">  @lang('admin.projects')  </h4>
                    <h4 class="mt-0 header-title m{{getDir()}}-auto"> 
                        <a href="{{ route('get.project.create') }}" class="btn btn-secondary btn-sm waves-effect fontLight">@lang('admin.addNew')</a> 
                    </h4>
                </div>
              <!--  <div class="col-12" style="padding-right: 0;"><input type="text" id="livesearch" style="margin-bottom: 8px;" placeholder="بحث"></div> -->
                 
                <div class="table-responsive table-striped">
                    <div id="coverloadingTable">
                        <img src="{{aurl()}}/loader.gif">
                    </div>
                    <table class="table table-bordered mb-0 "  id="example">
                        <thead>
                            <tr>
                                {!!create_th(trans('admin.name'))!!}
                                {!!create_th(trans('admin.region'))!!}
                                {!!create_th(trans('admin.projectType'))!!}
                                {!!create_th(trans('admin.contactPersonName'))!!}
                                {!!create_th(trans('admin.contactPersonPhone'))!!}
                                {!!create_th(trans('admin.createdAt'))!!}
                                {!!create_th(trans('admin.updatedAt'))!!}
                                <th>@lang('admin.actions')</th>
                            </tr>
                        </thead>
                        <tbody>

                            @if(count($rows) > 0)

                            @foreach($rows as $row)
                            <tr>
                  

                               <td><a href="/project/detials/{{$row->id}}">{{$row->name}} </a></td> 

                                @if($row->region !== null)
                                    {!!create_td($row->region->name .' - '. $row->region->city->name)!!}
                                @else 
                                    <td class="text-muted">@lang('admin.noData')</td>
                                @endif

                                

                                @if($row->project_type == 'resident')
                                    <td>@lang('admin.resident')</td>
                                @elseif($row->project_type == 'hotel')
                                    <td>@lang('admin.hotel')</td>
                                      @elseif($row->project_type == 'hotel')
                                    <td>@lang('admin.hotel')</td>
                                     @elseif($row->project_type == 'invest_resident')
                                    <td>@lang('admin.invest_resident')</td>
                                @elseif($row->project_type == 'invest')
                                    <td class="text-muted">@lang('admin.invest')</td>
                                @endif

                                {!!create_td($row->contact_person_name)!!}

                                {!!create_td($row->contact_person_phone)!!}

                                {!!create_td($row->created_at)!!}

                                {!!create_td($row->updated_at)!!}

                                <td class="text-center">
                                    <a href="{{ route('get.project.edit',[$row->id]) }}" class="m-r-15 text-muted edit-row" title="" data-original-title="Edit">
                                        <i class="mdi mdi-pencil font-18"></i>
                                    </a>
                                    <a href="javascript:void(0);" data-route="{{route('get.project.delete',[$row->id])}}" class="m-r-15 text-muted  delete-row " data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete">
                                        <i class="mdi mdi-close font-18"></i>
                                    </a>
                                    
                                </td>
                            </tr>
                            @endforeach

                            @else 
                            <tr> 
                                <td colspan="7" class="text-center"> 
                                    @lang('admin.msg.notFoundData') 
                                </td> 
                            </tr>
                            @endif

                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>
    <!-- end col -->

<style type="text/css">
    .dataTables_wrapper .dataTables_filter {
    text-align: right !important;
}
</style>
@endsection

@section('script')
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>

    <script src="https://cdn.datatables.net/1.11.2/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.2/js/dataTables.bootstrap4.min.js"></script>

<script>

    $(document).ready(function() {
    $('#example').DataTable();
} );

    $("#livesearch").on("keyup", function() {
    var value = $(this).val().toLowerCase().trim();

    $("table tr").each(function(index) {
        if (index != 0) {

            $row = $(this);

            var name = $row.find("td:eq(0)").text().toLowerCase().trim();

            if (name.indexOf(value) > -1) {
                $(this).show();
            }
            else {
                $(this).hide();
            }
        }
    });
});
</script>

@include('inc.ajax.delete')


@endsection