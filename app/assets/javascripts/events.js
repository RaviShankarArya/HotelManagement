$(document).on('change', '#category', function(){
  $.ajax({
    dataType : 'script',
    type : 'post',
    url : "/mainpages/" + $(this).val() + "/populate_sub_category"
  });
});