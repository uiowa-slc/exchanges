// Foundation JavaScript
// Documentation can be found at: http://foundation.zurb.com/docs
//$(document).foundation();
$(window).resize(function() {
    if(window.innerWidth > 585) { $(".off-canvas-wrap").removeClass("move-right"); }
});

$(".moreissues").click(
	function() {
		$(".pastissues").slideToggle("slow");
	}		
);

$(document).foundation({
  offcanvas : {
    // Sets method in which offcanvas opens.
    // [ move | overlap_single | overlap ]
    open_method: 'move', 
    // Should the menu close when a menu link is clicked?
    // [ true | false ]
    close_on_click : true
  }
});
