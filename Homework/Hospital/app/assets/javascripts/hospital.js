$(document).ready(function() {


$('#hospital_name').on('input', function() {
    var input=$(this);
    var is_hospital_name=input.val();
    if(is_hospital_name){input.removeClass("invalid").addClass("valid");}
    else{input.removeClass("valid").addClass("invalid");}
});

$('#hospital_description').on('input', function() {
    var input=$(this);
    var is_hospital_description=input.val();
    if(is_hospital_description){input.removeClass("invalid").addClass("valid");}
    else{input.removeClass("valid").addClass("invalid");}
});
$(".new_page").click(function() {
    var new_page =$(this).html()
    console.log(new_page)
    $(".hospital_list").addClass("hidden")
    $(".total" + new_page).removeClass("hidden")

  });
});
