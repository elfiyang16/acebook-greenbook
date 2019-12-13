$(document).ready(function() {
  $( "[id^=post_edit]" ).click(function(event) {
    var post_id = this.id.split("_");
    var post_div_id = "#post_text_" + post_id[2];
    var element_user_id = "#post_user_" + post_id[2];
    var element_created_at_id = "#" + post_id[2] + "_created_at";

    var post_user_id = $(element_user_id).text()
    var post_create_time = $(element_created_at_id).text()
    var current_user_id = $("#current_user_id").text()
    var post_edit_url = "/posts/" + post_id[2] + "/edit"
    var TEN_MINS = 600000;
    var right_now = new Date;

    if (post_user_id === current_user_id) {

      if ((right_now - Date.parse(post_create_time)) < TEN_MINS) {

        //update modal form to new path and prepopulate wih exisiting value
        $("#editForm").attr("action",post_edit_url)
        $(".form-control").val($(post_div_id).text())
      } else {

        alert("Sorry, it's more than 10 mins since you created the post, you can't edit it")
        event.stopPropagation();
      }

    } else {
    alert("Sorry, this isn't your post, please don't edit it!")
    event.stopPropagation();
    }
  });
  

  document.addEventListener('keydown', function(e) {
    if (e.keyIdentifier == 'U+000A' || e.keyIdentifier == 'Enter' || e.keyCode == 13) {
      if (e.target.nodeName == 'INPUT' && e.target.type == 'text') {
        e.preventDefault();
        return false;
      }
    }
  }, true);
});
