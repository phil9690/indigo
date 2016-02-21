// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require rails.validations
//= require rails.validations.simple_form
//= require foundation
//= require_tree .

$(document).on('ready page:load', function () {
  $(document).foundation();

  $( "#small-nav-activator" ).click(function() {
    $( "#small-nav" ).toggleClass('active');
  });

  $( ".content" ).click(function() {
    if ($( "#small-nav" ).hasClass("active")) {
     $( "#small-nav" ).removeClass("active");
    }
  });

  ContactForm.init($('#new_hiring_message'), $('#hiring_button'));
  ContactForm.init($('#new_looking_message'), $('#looking_button'));
  ContactForm.init($('#new_enquiry_message'), $('#enquiry_button'));

   $('#rssFeed').FeedEk({
     FeedUrl: 'https://www.rec.uk.com/rss',
     MaxCount: 10,
     ShowDesc: true,
     DescCharacterLimit: 80,
     ShowPubDate: false,
     TitleLinkTarget: '_blank',
   });

 // $('#newsSlider').unslider({
 //   infinite: true 
 // });

  $(window).scroll(function(){
    if ($(window).scrollTop() > 1){
        $('#nav').addClass('sticky')
    } else {
        $('#nav').removeClass('sticky')
    }
  });

  $("#form_selector").change(function(){
    $(this).find("option:selected").each(function(){
      if($(this).attr("value")=="General Enquiry"){
        $(".messageform").not(".enquiry").hide();
        $(".enquiry").show();
      }
      else if($(this).attr("value")=="I'm looking for work"){
        $(".messageform").not(".looking").hide();
        $(".looking").show();
      }
      else if($(this).attr("value")=="I'm looking to hire"){
        $(".messageform").not(".hiring").hide();
        $(".hiring").show();
      }
      else{
        $(".messageform").hide();
      }
    });
  }).change();

});


$(document).ready(function(){
  var stickyNavTop = $('#nav').offset().top;

  var stickyNav = function() {
    var scrollTop = $(window).scrollTop();

    if (scrollTop > 53) {
      $('body').addClass('scrolled');
    } else {
      $('body').removeClass('scrolled');
    }

    //  if (scrollTop > stickyNavTop) {
    //    $('#nav').addClass('sticky');
    //    $('.arrow-down').addClass('hidden');
    //  } else {
    //   $('#nav').removeClass('sticky');
    //  }
  };

  stickyNav();

  $(window).scroll(function() {
    stickyNav();
  });
});
