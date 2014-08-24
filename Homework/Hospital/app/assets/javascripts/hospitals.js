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

$("#hospital_submit button").click(function(event){
    var form_data=$("#hospital").serializeArray();
    var error_free=true;
    for (var input in form_data){
        var element=$("#hospital_"+form_data[input]['name']);
        var valid=element.hasClass("valid");
        var error_element=$("span", element.parent());
        if (!valid){error_element.removeClass("error").addClass("error_show"); error_free=false;}
        else{error_element.removeClass("error_show").addClass("error");}
    }
    if (!error_free){
        event.preventDefault();
    }
    else{
        alert('No errors: Form will be submitted');
    }
});
$(".new_page").click(function() {
    var new_page =$(this).html()
    console.log(new_page)
    $(".hospital_list").addClass("hidden")
    $(".total" + new_page).removeClass("hidden")

  });

});
