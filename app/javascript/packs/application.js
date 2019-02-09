import "bootstrap";

const typed = new Typed('#typed',{
    strings: ['Learn a language from a local expert', 'Redistribute wealth to a local expert', 'Learn a language from a local expert'],
    backSpeed: 30,
    typeSpeed: 40,
    backDelay: 1500,
});

$(window).scroll(function() {
  if ($(document).scrollTop() >= $(window).height() - 64) {
    $('.navbar').addClass('fill-navbar');
  } else {
    $('.navbar').removeClass('fill-navbar');
  }
});

$("#arrow").on("click", function(event){
  $('html, body').animate({
    scrollTop: $("#arrow-scroll-anchor").offset().top
  }, 800);
});
