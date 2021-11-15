<!--  Modal content for the above example -->
<div class="modal fade view-modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title mt-0" id="myLargeModalLabel">  @lang('admin.viewData') </h5>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-6">
                        <div class="form-group row">
                            <label for="example-search-input" class="col-sm-4 col-form-label">@lang('admin.clientName')</label>
                            <div class="col-sm-8">
                                <span id=client_name></span>
                            </div>
                        </div>
                    </div>


                         <div class="col-6">
                        <div class="form-group row">
                            <label for="example-search-input" class="col-sm-4 col-form-label">@lang('admin.date_visit')</label>
                            <div class="col-sm-8">
                                <span id=date_visit></span>
                            </div>
                        </div>
                    </div>


                     <div class="col-12">
                        <div class="form-group row">
                            <label for="example-search-input" class="col-sm-2 col-form-label">link</label>
                            <div class="col-sm-10">
                                <a id="link" src="" >رابط العميل</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="form-group row">
                            <label for="example-search-input" class="col-sm-2 col-form-label">@lang('admin.notes')</label>
                            <div class="col-sm-10">
                                <textarea id="notes" disabled="" style="width: 100%"></textarea>
                            </div>
                        </div>
                    </div>

                  
                </div>
                

 <div class="col-md-12">
        <div class="form-group row" >
            
         
            <label class="col-sm-12 col-form-label"> <span id="make_show_button" class="span-show">+  بيانات إضافية  </span>
                <span id="make_hide_button" class="span-show">-  بيانات إضافية  </span></label>
            </div>
        </div>
  
                <div class="row" id="extra_data">
                      <div class="col-6">
                        <div class="form-group row">
                            <label for="example-search-input" class="col-sm-4 col-form-label">@lang('admin.propType')</label>
                            <div class="col-sm-8">
                                <span id=prop_type></span>
                            </div>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="form-group row">
                            <label for="example-search-input" class="col-sm-4 col-form-label">@lang('admin.region')</label>
                            <div class="col-sm-8">
                                <span id=region></span>
                            </div>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="form-group row">
                            <label for="example-search-input" class="col-sm-4 col-form-label">@lang('admin.numberOfRooms')</label>
                            <div class="col-sm-8">
                                <span id=number_of_rooms></span>
                            </div>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="form-group row">
                            <label for="example-search-input" class="col-sm-4 col-form-label">@lang('admin.propStatus')</label>
                            <div class="col-sm-8">
                                <span id=prop_status></span>
                            </div>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="form-group row">
                            <label for="example-search-input" class="col-sm-4 col-form-label">@lang('admin.expectedPrice')</label>
                            <div class="col-sm-8">
                                <span id=expected_price></span>
                            </div>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="form-group row">
                            <label for="example-search-input" class="col-sm-4 col-form-label">@lang('admin.payment')</label>
                            <div class="col-sm-8">
                                <span id=payment></span>
                            </div>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="form-group row">
                            <label for="example-search-input" class="col-sm-4 col-form-label">@lang('admin.look')</label>
                            <div class="col-sm-8">
                                <span id=look></span>
                            </div>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="form-group row">
                            <label for="example-search-input" class="col-sm-4 col-form-label">@lang('admin.nationality')</label>
                            <div class="col-sm-8">
                                <span id=nationality></span>
                            </div>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="form-group row">
                            <label for="example-search-input" class="col-sm-4 col-form-label">@lang('admin.interestedInTurkishCitizenship')</label>
                            <div class="col-sm-8">
                                <span id=interested_in_turkish_citizenship></span>
                            </div>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="form-group row">
                            <label for="example-search-input" class="col-sm-4 col-form-label">@lang('admin.purposeOfPurchase')</label>
                            <div class="col-sm-8">
                                <span id=purpose_of_purchase></span>
                            </div>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="form-group row">
                            <label for="example-search-input" class="col-sm-4 col-form-label">@lang('admin.urgent')</label>
                            <div class="col-sm-8">
                                <span id=urgent></span>
                            </div>
                        </div>
                    </div>

</div>

      
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<style type="text/css">
    #notes{
        width: 90%;height: 130px;border: unset;padding: 20px;background: #fff;
    }
</style>