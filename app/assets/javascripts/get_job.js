$(document).on("click", "#submit", function(){
  console.log("event catched");

  $.ajax({
    url: "/get_job/index",
    method: "GET",
    dataType: "json",
    error: function (xhr, status, error) {
      console.error('AJAX Error: ' + status + error);
    },
    success: function (response) {
      console.log(response);
      var cities = response["cities"];
      $("#jobs").append("random job: ");
      $("#jobs").append(response["result"]);
      $("#jobs").append("<br>")
    }
  });
});
