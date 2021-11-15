

<script type="text/javascript">

  
$("#FormEdit").submit(function(e) 
  {
    var el = $(this); 

      e.preventDefault();
      var formData  = new FormData(jQuery('#FormEdit')[0]);

      button_text = $('#FormEdit button[type="submit"]').html();
      $('#FormEdit button[type="submit"]').html('<i class="fa fa-spinner fa-spin"></i>'+button_text);

    $.ajax({
        type: "POST",
        url: "{{ $routeEdit }}",
        data:formData,
        contentType: false,
        processData: false,
        beforeSend:function()
        {
            $("FormEdit .coverLoading").css("display","block");
            el.find("button").prop( "disabled", true );
        },
        success: function (data) 
        {

            $('#FormEdit button[type="submit"]').html(button_text);
            $("#formEdit .coverloading").css("display","none");
            el.find("button").prop( "disabled", false );
            $("#errorsEdit").html('');
            $("#errorsEdit").append("<li class='alert alert-success text-center'>{{trans('admin.msg.editedSuccess')}}</li>")

            Swal.fire(
            {
                position: 'center',
                type: 'success',
                title: "{{trans('admin.msg.editedSuccess')}}",
                showConfirmButton: false,   
                timer: 2000
            })
            $('.edit-modal').modal('toggle');


            @isset($redirectRoute)
              window.location.href = "{{ $redirectRoute }}"
            @else
              window.location.reload()
            @endisset

            //  

        }, error: function(xhr, status, error) 
        {   

            console.log(xhr);
            $('#FormEdit button[type="submit"]').html(button_text);
            $("#formEdit .coverloading").css("display","none");
            el.find("button").prop( "disabled", false );

            $("#errorsEdit").html('');
            $.each(xhr.responseJSON.errors, function (key, item) 
            {
              $("#errorsEdit").append("<li class='alert alert-danger show-errors'>"+item+"</li>")
            });
          
        }
    });

});

</script>