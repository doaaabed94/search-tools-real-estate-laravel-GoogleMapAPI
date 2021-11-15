
<!-- Store New Data  -->
<script type="text/javascript">

  
  $("#FormAdd").submit(function(e) 
    {
      var el = $(this); 

      e.preventDefault();
      var formData  = new FormData(jQuery('#FormAdd')[0]);

      button_text = $('#FormAdd button[type="submit"]').html();
      $('#FormAdd button[type="submit"]').html('<i class="fa fa-spinner fa-spin"></i>'+button_text);

      $.ajax({
          type: "POST",
          url: "{{ $routeAdd }}",
          data:formData,
          contentType: false,
          processData: false,
          beforeSend:function()
          {
              el.find(".coverloading").css({"display":"block"});
              el.find("button").prop( "disabled", true );
          },
          success: function (data) 
          {
            el.find(".coverloading").css("display","none");
              el.find("button").prop( "disabled", false );

              el.find(".form-group input:not(.doNotRemoveData)").val('');
              el.find(".form-group textarea").val('');
              Swal.fire(
              {
                position: 'center',
                type: 'success',
                title: "{{trans('admin.msg.addedSuccess')}}",
                showConfirmButton: false,
                timer: 2000
              })
            //   alert("{{ trans('admin.msg.addedSuccess') }}")

              $('#FormAdd button[type="submit"]').html(button_text);
              $("#errorsAdd").html('');
              $("#errorsAdd").append("<li class='alert alert-success text-center'>{{ trans('admin.msg.addedSuccess') }}</li>")
              $('.add-modal').modal('toggle');
              
              @isset($redirectRoute)
                window.location.href = "{{ $redirectRoute }}"
              @else
                window.location.reload()
              @endisset
          }, 
          error: function(xhr, status, error) 
          {
              console.log(xhr);
              $('#FormAdd button[type="submit"]').html(button_text);
              $("#errorsAdd").html('');
              $.each(xhr.responseJSON.errors, function (key, item) 
              {
                $("#errorsAdd").append("<li class='alert alert-danger show-errors'>"+item+"</li>")
              })
              el.find(".coverloading").css("display","none");
              el.find("button").prop( "disabled", false );
            
          }
      })

});

</script>
