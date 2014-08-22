$(document).ready(function() {


$('#medication_name').on('input', function() {
    var input=$(this);
    var is_medication_name=input.val();
    if(is_medication_name){input.removeClass("invalid").addClass("valid");}
    else{input.removeClass("valid").addClass("invalid");}
});

$('#medication_description').on('input', function() {
    var input=$(this);
    var is_medication_description=input.val();
    if(is_medication_description){input.removeClass("invalid").addClass("valid");}
    else{input.removeClass("valid").addClass("invalid");}
});
$(".new").click(function() {
    var new_page =$(this).html()
    console.log(new_page)
    $(".medication_list").addClass("hidden")
    $(".total" + new_page).removeClass("hidden")

  });

});



