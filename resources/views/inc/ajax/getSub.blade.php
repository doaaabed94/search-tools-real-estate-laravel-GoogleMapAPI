<script type="text/javascript">
  
$(document).on("change","#cat",function(){

  var el = $(this);
  var cat = $(this).val()
  $.ajax({
      type: "GET",
      url: "{{route('admin.get.product.getSub')}}",
      data:{cat:cat},
      cache: false,
      success: function (data) 
      {
          $("#sub").html('');
          $("#sub").append(data);

      }, error: function (data) 
      {
        alert("error")
      }
  });



});

</script>