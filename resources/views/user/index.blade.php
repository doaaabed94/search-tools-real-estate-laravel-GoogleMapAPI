@extends('main')

@section('content')

 
    <!-- end col -->
    <div class="col-lg-12">
        <div class="card m-b-20">
            <div class="card-body">
                <div class="d-flex mb-2">
                    <h4 class="mt-0 header-title m{{getInvDir()}}-auto">  @lang('admin.users')  </h4>
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
                                <th>@lang('admin.name')</th>
                                <th>@lang('admin.role')</th>
                                <th>@lang('admin.actions')</th>
                            </tr>
                        </thead>
                        <tbody>

               



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


    @include('user.forms.add')
    @include('user.forms.edit')

@endsection

<?php $routeAdd = route('post.user.store'); ?>
<?php $routeEdit = route('put.user.update'); ?>

@section('script')


@include('inc.ajax.delete')

@include('inc.ajax.store')


<script>
    $(document).on("click",".edit-row",function(){
        
        var el = $(this);
        $("#id").val(el.attr("data-id"));
        $("#name").val(el.attr("data-name"));
        $("#email").val(el.attr("data-email"));
        $("#role").val(el.attr("data-role"));

        

        $('#role option').each(function(item, index)
        {
            if($('#role').val() == $(this).val())
            {
                $(this).attr('selected', true)
            }
        })

        $('#langId option').each(function(item, index)
        {
            if($('#langId').val() == $(this).val())
            {
                $(this).attr('selected', true)
            }
        })

    }); 

</script>

    @include('inc.ajax.update')

@endsection