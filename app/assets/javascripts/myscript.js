jQuery(document).on("turbolinks:load", function () {

  var about_box; 
  var load_about = true;

  var show_about = function() {
    if ( about_box == undefined ) {
      about_box = $("#about");
    }
    about_box.addClass("modal_visible");

    if ( load_about ) { // load about.html content only if it is not loaded before
      var content_box = $("#about_content");
      content_box.load("about.html");
      load_about = false;
    }
  }

  var hide_about = function() {
    about_box.removeClass("modal_visible");
  }

  $("a[href='#about']").on("click", function(event) {
    show_about();
    event.preventDefault();
  });

  $(".fa-close").on("click", hide_about);
  $(window).on("click", function (event) {
    if ( about_box && (event.target == about_box.get(0))) {
      hide_about();
    }
  });
});
