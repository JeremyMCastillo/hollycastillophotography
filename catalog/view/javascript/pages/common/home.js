/**
 * Created by Max on 9/27/2015.
 */

jQuery(function($){
    "use strict";
    $("#home-slider-wrap").unslider({
        animation: 'fade',
        autoplay: true,
        speed: 2000,
        delay: 5000,
        arrows: false,
        infinite: true,
        nav: false
    });

    $(window).resize(function(){
        $("#home-slider-wrap ul li img").css("max-height", $(window).height() - $("footer").outerHeight() - parseInt($("body").css("padding-top")));
        $("ul.wait-for-load").css("max-height", $("#home-slider-wrap ul li img").height());
    });

   $("#reviews .cat-photos img").on("click", function(){
     var reviewNumber = $(this).attr('data-review');
     $("#reviews .active").removeClass("active");
     $("#reviews *[data-review='" + reviewNumber + "']").addClass("active");
   });

   var leftValue = 0;
   var quitAnimation;
   var maxLeft = 0;
   function animate(){
     clearTimeout(quitAnimation);
     $("#instagram-feed .carousel").css({
			"-webkit-transition": "right 0.3s ease",
			"-moz-transition": "right 0.3s ease",
			"-o-transition": "right 0.3s ease",
			"transition": "right 0.3s ease",
			"right"    : leftValue.toString() + "px"
		});
    quitAnimation = setTimeout(function(){
      $("#instagram-feed .carousel").css({
 			"-webkit-transition": "",
 			"-moz-transition": "",
 			"-o-transition": "",
 			"transition": ""
 		});
    }, 300);
   }
   $("#scroll-left").on("click", function(){
     if(leftValue <= 0){
       return;
     }
     leftValue -= 120;
     animate();
   });
   $("#scroll-right").on("click", function(){
     maxLeft = 0;
     $(".carousel-wrap img").each(function(){
       maxLeft += $(this).width();
     });
     maxLeft -= ($(".carousel-wrap").width() - $(".carousel-wrap img").last().width() - 50);
     if(leftValue >= maxLeft){
       return;
     }
     leftValue += 120;
     animate();
   });
   $("#reviews-scroll-left").on("click", function(){
      $("#reviews img.active").prev().click();
   });
   $("#reviews-scroll-right").on("click", function(){
     $("#reviews img.active").next().click();
   });
});

$(window).load(function(){
    $("#home-slider-wrap ul li img").css("max-height", $(window).height() - $("footer").outerHeight() - parseInt($("body").css("padding-top")));
    $(".wait-for-load").fadeIn(function(){
        $("ul.wait-for-load").css("max-height", $("#home-slider-wrap ul li img").height());
    });
    $(window).on("scroll", function(){

    });
});
