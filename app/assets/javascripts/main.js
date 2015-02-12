$(document).ready(function(){

  //toggle
  $(".footer-inner h5").click(function () {
    if ( $(".slider-test").is(":visible") ) {
      $(this).parent().children(".footer-inner ul").slideToggle("slow");
    }
   });

  //bxslider
  if ($.fn.bxSlider) {
    $('.bxslider').bxSlider({
      mode: 'horizontal',
      minSlides: 2,
      maxSlides: 4,
      slideWidth: 121,
      slideMargin: 50,
      speed : 1500,
      controls : true,
      adaptiveHeight:true,
      moveSlides: 1
    });
  }
});
