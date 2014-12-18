jQuery(function() {
	

//toggle
jQuery(".footer-inner h5").click(function () {
		if ( jQuery(".slider-test").is(":visible") ) {
		  jQuery(this).parent().children(".footer-inner ul").slideToggle("slow");
		}
    });
    
    
   
//bxslider	
	if (jQuery.fn.bxSlider) {
		jQuery('.bxslider').bxSlider({
			minSlides: 2,
			maxSlides: 4,
			slideWidth: 121,
			slideMargin: 50,
			speed : 600,
			controls : true,
			adaptiveHeight:true,
			moveSlides: 1
		});
	}

	
	
	
	
});