$(document).on("click", ".change_workflow", function() {
  console.log("ggg")
  $.ajax({
    type: "PATCH",
    url: $(this).attr("que_url"),
    dataType: "script"
  })
});
$(".flash_message").fadeOut(2000)

$(document).on("click", ".student", function() {
  $(this).remove()
});