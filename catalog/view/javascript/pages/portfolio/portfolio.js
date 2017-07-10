/**
 * Created by Max on 10/28/2015.
 */
function loadImage(photoId){
	$.ajax({
		url: 'index.php?route=portfolio/portfolio/LoadImage',
		type: 'post',
		data: { image_id: photoId },
		dataType: 'json',
		success: function(json){
			var imageUrl = json['image'];
			var img = $("<img class='overlay-image' src='" + imageUrl + "' />");
			img.on("load", function(){
				CenterOverlayImage();
			});
			var html = "<div class='overlay'></div>";
			$("body").prepend(html);
			$(".overlay").append(img);
		}
	});
}

function CenterOverlayImage(){
	if($(".overlay-image").length === 0){
		return;
	}
	var imageHeight = $(".overlay-image").outerHeight();
	var windowHeight = $(window).height();
	if(windowHeight > imageHeight){
		var newHeight = (windowHeight - imageHeight) / 2.0;
		$(".overlay-image").css("top", newHeight);
	}
}

var sliderObject;

jQuery(function($){
    "use strict";
    
    $(window).resize(function(){
        $("#portfolio-slider-wrap ul li img").css("max-height", $(window).height() - $("#portfolio-thumbnails").outerHeight() - parseInt($("body").css("padding-top")) - 20);
        if(parseInt($(window).width()) < 768){
            $(".navbar-header").addClass("scrolled");
        }
        else{
            $(".navbar-header").removeClass("scrolled");
        }
		
		CenterOverlayImage();
    });

    if(parseInt($(window).width()) < 768){
        $(".navbar-header").addClass("scrolled");
    }
    else{
        $(".navbar-header").removeClass("scrolled");
    }

	$("body").on("click", ".overlay", function(){
		$(this).remove();
	});
	
});

$(window).load(function(){
	var wall = new Freewall("#portfolio-slider-wrap");
	wall.reset({
		selector: '.item',
		animate: false,
		cellW: 6,
		cellH: 120,
		onResize: function() {
			wall.fitWidth();
			//wall.fitHeight($(window).height() - $(".navbar-header").outerHeight());
			wall.fillHoles();
		}
	});
	wall.fitWidth();
	//wall.fitHeight($(window).height() - $(".navbar-header").outerHeight());
	wall.fillHoles();
	// for scroll bar appear;
	$(window).trigger("resize");
});