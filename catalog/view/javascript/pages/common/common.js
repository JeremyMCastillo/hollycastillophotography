/**
 * Created by Max on 10/24/2015.
 */
function checkScroll(){
    if($(window).scrollTop() > 0){
        $(".navbar-header").addClass("scrolled");
    }
    else{
        $(".navbar-header").removeClass("scrolled");
    }
}

$(function(){
    $(window).scroll(checkScroll);
    checkScroll();
});

$(window).load(function(){
});