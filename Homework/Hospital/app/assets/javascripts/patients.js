$(document).ready(function() {


$('#patient_first_name').on('input', function() {
    var input=$(this);
    var is_patient_first_name=input.val();
    if(is_patient_first_name){input.removeClass("invalid").addClass("valid");}
    else{input.removeClass("valid").addClass("invalid");}
});

$('#patient_last_name').on('input', function() {
    var input=$(this);
    var is_patient_last_name=input.val();
    if(is_patient_last_name){input.removeClass("invalid").addClass("valid");}
    else{input.removeClass("valid").addClass("invalid");}
});
$(".new").click(function() {
    var new_page =$(this).html()
    console.log(new_page)
    $(".patient_list").addClass("hidden")
    $(".total" + new_page).removeClass("hidden")

  });

});
