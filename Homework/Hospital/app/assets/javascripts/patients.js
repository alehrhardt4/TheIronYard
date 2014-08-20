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


$('#medication_description').on('input', function() {
    var input=$(this);
    var is_medication_description=input.val();
    if(is_medication_description){input.removeClass("invalid").addClass("valid");}
    else{input.removeClass("valid").addClass("invalid");}
});

});
