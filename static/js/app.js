
$(document).ready(function() {
  $(".reply-toggle").click(function() {
    $(this).parents().children("div.replies").slideToggle(300);
  });
});
