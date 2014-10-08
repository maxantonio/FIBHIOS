(function($) {
 "use strict"
	
// OWL CAROUSEL
	$("#owl-testimonial").owlCarousel({
		items : 1,
		lazyLoad : true,
		navigation : false,
		autoPlay: true
    });

	$("#owl-testimonial-widget, #owl-blog").owlCarousel({
		items : 1,
		lazyLoad : true,
		navigation : true,
		pagination : false,
		autoPlay: false
    });
	
	$("#owl_blog_three_line, #owl_portfolio_two_line, #owl_blog_two_line").owlCarousel({
		items : 2,
		lazyLoad : true,
		navigation : true,
		pagination : false,
		autoPlay: true
    });

	$("#owl_shop_carousel, #owl_shop_carousel_1").owlCarousel({
		items : 3,
		lazyLoad : true,
		navigation : true,
		pagination : false,
		autoPlay: true
    });
	
	$("#services").owlCarousel({
		items : 3,
		lazyLoad : true,
		navigation : false,
		pagination : true,
		autoPlay: true
    });
	
	$(".buddy_carousel").owlCarousel({
		items : 9,
		lazyLoad : true,
		navigation : false,
		pagination : true,
		autoPlay: true
    });
	

	$('.buddy_tooltip').popover({
		container: '.buddy_carousel, .buddy_members'
	});
		


// PARALLAX LAYOUT
	$(window).bind('body', function() {
		parallaxInit();
	});
	function parallaxInit() {
		$('#one-parallax').parallax("30%", 0.1);
		$('#two-parallax').parallax("30%", 0.1);
		$('#three-parallax').parallax("30%", 0.1);
		$('#four-parallax').parallax("30%", 0.4);
		$('#five-parallax').parallax("30%", 0.4);
		$('#six-parallax').parallax("30%", 0.4);
		$('#seven-parallax').parallax("30%", 0.4);
	}
	
	
	
// FUN FACTS
		$(window).load(function() { // makes sure the whole site is loaded
			$('#status').fadeOut(); // will first fade out the loading animation
			$('#preloader').delay(350).fadeOut('slow'); // will fade out the white DIV that covers the website.
			$('body').delay(350).css({'overflow':'visible'});
		})

	function count($this){
		var current = parseInt($this.html(), 10);
		current = current + 1; /* Where 50 is increment */
		
		$this.html(++current);
			if(current > $this.data('count')){
				$this.html($this.data('count'));
			} else {    
				setTimeout(function(){count($this)}, 50);
			}
		}        
		
		$(".stat-count").each(function() {
		  $(this).data('count', parseInt($(this).html(), 10));
		  $(this).html('0');
		  count($(this));
	});
	
	
// WOW
	new WOW(
		{ offset: 300 }
	).init();
		
		
// DM Top
	jQuery(window).scroll(function(){
		if (jQuery(this).scrollTop() > 1) {
			jQuery('.dmtop').css({bottom:"25px"});
		} else {
			jQuery('.dmtop').css({bottom:"-100px"});
		}
	});
	jQuery('.dmtop').click(function(){
		jQuery('html, body').animate({scrollTop: '0px'}, 800);
		return false;
	});
	
// Rotate Text
	$(".rotate").textrotator({
		animation: "flipUp",
		speed: 2300
	});


	
// TOOLTIP
    $('.social-icons, .bs-example-tooltips,.blog-meta').tooltip({
      selector: "[data-toggle=tooltip]",
      container: "body"
    })
	

// BOXED LAYOUT
	$(".boxed-style").click( function(){
		$(".theme-layout").addClass("boxed");
		$("body").addClass('bg10');
	});
	
	
	$(".full-width").click( function(){
	$(".theme-layout").removeClass("boxed");
	$("body").removeClass('bg1');
	$("body").removeClass('bg2');
	$("body").removeClass('bg3');
	$("body").removeClass('bg4');
	$("body").removeClass('bg5');
	});

	$(".bg1").click( function(){
		$("body").addClass('bg1');
		$("body").removeClass('bg2');
		$("body").removeClass('bg3');
		$("body").removeClass('bg4');
		$("body").removeClass('bg5');
		$("body").removeClass('bg6');
		$("body").removeClass('bg7');
		$("body").removeClass('bg8');
		$("body").removeClass('bg9');
		$("body").removeClass('bg10');
	});

	$(".bg2").click( function(){
		$("body").removeClass('bg1');
		$("body").addClass('bg2');
		$("body").removeClass('bg3');
		$("body").removeClass('bg4');
		$("body").removeClass('bg5');
		$("body").removeClass('bg6');
		$("body").removeClass('bg7');
		$("body").removeClass('bg8');
		$("body").removeClass('bg9');
		$("body").removeClass('bg10');
	});

	$(".bg3").click( function(){
		$("body").removeClass('bg1');
		$("body").removeClass('bg2');
		$("body").addClass('bg3');
		$("body").removeClass('bg4');
		$("body").removeClass('bg5');
		$("body").removeClass('bg6');
		$("body").removeClass('bg7');
		$("body").removeClass('bg8');
		$("body").removeClass('bg9');
		$("body").removeClass('bg10');
	});

	$(".bg4").click( function(){
		$("body").removeClass('bg1');
		$("body").removeClass('bg2');
		$("body").removeClass('bg3');
		$("body").addClass('bg4');
		$("body").removeClass('bg5');
		$("body").removeClass('bg6');
		$("body").removeClass('bg7');
		$("body").removeClass('bg8');
		$("body").removeClass('bg9');
		$("body").removeClass('bg10');
	});

	$(".bg5").click( function(){
		$("body").removeClass('bg1');
		$("body").removeClass('bg2');
		$("body").removeClass('bg3');
		$("body").removeClass('bg4');
		$("body").addClass('bg5');
		$("body").removeClass('bg6');
		$("body").removeClass('bg7');
		$("body").removeClass('bg8');
		$("body").removeClass('bg9');
		$("body").removeClass('bg10');
	});	
	
	$(".bg6").click( function(){
		$("body").removeClass('bg1');
		$("body").removeClass('bg2');
		$("body").removeClass('bg3');
		$("body").removeClass('bg4');
		$("body").removeClass('bg5');
		$("body").addClass('bg6');
		$("body").removeClass('bg7');
		$("body").removeClass('bg8');
		$("body").removeClass('bg9');
		$("body").removeClass('bg10');
	});	
	
	$(".bg7").click( function(){
		$("body").removeClass('bg1');
		$("body").removeClass('bg2');
		$("body").removeClass('bg3');
		$("body").removeClass('bg4');
		$("body").removeClass('bg5');
		$("body").removeClass('bg6');
		$("body").addClass('bg7');
		$("body").removeClass('bg8');
		$("body").removeClass('bg9');
		$("body").removeClass('bg10');
	});	
	
	$(".bg8").click( function(){
		$("body").removeClass('bg1');
		$("body").removeClass('bg2');
		$("body").removeClass('bg3');
		$("body").removeClass('bg4');
		$("body").removeClass('bg5');
		$("body").removeClass('bg6');
		$("body").removeClass('bg7');
		$("body").addClass('bg8');
		$("body").removeClass('bg9');
		$("body").removeClass('bg10');
	});	
	
	$(".bg9").click( function(){
		$("body").removeClass('bg1');
		$("body").removeClass('bg2');
		$("body").removeClass('bg3');
		$("body").removeClass('bg4');
		$("body").removeClass('bg5');
		$("body").removeClass('bg6');
		$("body").removeClass('bg7');
		$("body").removeClass('bg8');
		$("body").addClass('bg9');
		$("body").removeClass('bg10');
	});	
	
	$(".bg10").click( function(){
		$("body").removeClass('bg1');
		$("body").removeClass('bg2');
		$("body").removeClass('bg3');
		$("body").removeClass('bg4');
		$("body").removeClass('bg5');
		$("body").removeClass('bg6');
		$("body").removeClass('bg7');
		$("body").removeClass('bg8');
		$("body").removeClass('bg9');
		$("body").addClass('bg10');
	});(jQuery);

	

//Pop Over
 $(function (){
         $("#bs-example a").popover();
      });


	
	jQuery(document).ready(function($) {
	  var rsi = $('#slider-in-laptop').royalSlider({
		autoHeight: false,
		arrowsNav: false,
		fadeinLoadedSlide: false,
		controlNavigationSpacing: 0,
		controlNavigation: 'bullets',
		imageScaleMode: 'fill',
		imageAlignCenter: true,
		loop: false,
		loopRewind: false,
		numImagesToPreload: 6,
		keyboardNavEnabled: true,
		autoScaleSlider: true,  
		autoScaleSliderWidth: 486,     
		autoScaleSliderHeight: 315,
	
		/* size of all images http://help.dimsemenov.com/kb/royalslider-jquery-plugin-faq/adding-width-and-height-properties-to-images */
		imgWidth: 792,
		imgHeight: 479
	
	  }).data('royalSlider');
	  $('#slider-next').click(function() {
		rsi.next();
	  });
	  $('#slider-prev').click(function() {
		rsi.prev();
	  });
	});

 

	
	
// ACCORDION & TOGGLE ITEM LAYOUT
   var iconOpen = 'fa fa-minus',
        iconClose = 'fa fa-plus';

    $(document).on('show.bs.collapse hide.bs.collapse', '.accordion', function (e) {
        var $target = $(e.target)
          $target.siblings('.accordion-heading')
          .find('em').toggleClass(iconOpen + ' ' + iconClose);
          if(e.type == 'show')
              $target.prev('.accordion-heading').find('.accordion-toggle').addClass('active');
          if(e.type == 'hide')
              $(this).find('.accordion-toggle').not($target).removeClass('active');
    });
	
})(jQuery);