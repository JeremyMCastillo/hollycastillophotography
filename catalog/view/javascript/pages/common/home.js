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
});

$(window).load(function(){
    $("#home-slider-wrap ul li img").css("max-height", $(window).height() - $("footer").outerHeight() - parseInt($("body").css("padding-top")));
    $(".wait-for-load").fadeIn(function(){
        $("ul.wait-for-load").css("max-height", $("#home-slider-wrap ul li img").height());
    });
    $(window).on("scroll", function(){

    });
});
