// Foundation JavaScript
// Documentation can be found at: http://foundation.zurb.com/docs
$(document).foundation();
$(window).resize(function() {
    if(window.innerWidth > 585) { $(".off-canvas-wrap").removeClass("move-right"); }
});

var state = 0;
$('#more-arrow').click(
	function() {
		if (state == 0) {
			$('#issues-nav').animate(
				{
					maxHeight: 333,
					height: '100%'
				},
				550
			);
		} else {
			$('#issues-nav').animate(
				{
					height: 0,
					maxHeight: 0
				},
				350
			);
		}
		if (state == 0) {
			state = 1;
		} else {
			state = 0;
		}
	}		
);



