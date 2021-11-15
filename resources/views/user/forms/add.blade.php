<!--  Modal content for the above example -->
<div class="modal fade add-modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title mt-0" id="myLargeModalLabel">  @lang('admin.addNew') </h5>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <div class="modal-body">

                <form id="FormAdd">
                        <div  class="coverLoading"><img src="{{aurl()}}/loader.gif"></div>
                        @csrf
                        <div class="form-group row">
                            <ul id="errorsAdd"></ul>
                        </div>
                        <div class="form-group row">
                            <label for="example-search-input" class="col-sm-2 col-form-label">@lang('admin.name')</label>
                            <div class="col-sm-10">
                                <input class="form-control" required name="name" type="search">
                            </div>
                        </div>


                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">@lang('admin.role')</label>
                            <div class="col-sm-10">
                                <select class="custom-select" name="role" id="role"  required>
                                    <option value="admin">@lang('admin.admin')</option>
                                    <option value="editor">@lang('admin.editor')</option>
                                    <option value="reader">@lang('admin.reader')</option>
                                </select>
                            </div>
                        </div>

    
                        <div class="form-group row">
                            <label for="example-search-input" class="col-sm-2 col-form-label">@lang('admin.email')</label>
                            <div class="col-sm-10">
                                <input class="form-control"  name="email" type="email">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="example-search-input" class="col-sm-2 col-form-label">@lang('admin.password')</label>
                            <div class="col-sm-10">
                                <input class="form-control"  name="password" type="password">
                            </div>
                        </div>



                        <div class="form-group row">
                            <div class="col-sm-12 text-center">
                                <button class="btn btn-primary fontLight submit-btn"  type="submit"  >
                                        @lang('admin.addNew')
                                </button>
                            </div>
                        </div>
                </form>
                
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->