<script type="text/javascript">
  
  $(document).on("click",".delete-row",function(e){
  
    e.preventDefault();
    var el = $(this);
    var route = $(this).attr("data-route")
    $.ajax({
        type: "GET",
        url: route,
        cache: false,
        beforeSend:function()
        {
            el.prop("disabled", true );
        },
        success: function (data) 
        {
            el.parents(".cont-item").remove();
            Swal.fire(
            {
                position: 'center',
                type: 'success',
                title: "{{trans('admin.msg.deletedSuccess')}}",
                showConfirmButton: false,
                timer: 2000
            })
  
        }, error: function (data) 
        {
      
            el.prop( "disabled", false );
          
        }
    });
  
  
  
  });
  
  </script>