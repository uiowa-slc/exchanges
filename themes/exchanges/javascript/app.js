// Foundation JavaScript
// Documentation can be found at: http://foundation.zurb.com/docs
$(document).foundation();
$(window).resize(function() {
    if(window.innerWidth > 585) { $(".off-canvas-wrap").removeClass("move-right"); }
});


$('#issue-menu').hover(
	function() {
		$('.more-arrow').animate(
			{
				fontSize: 13
			},
			500,
			function() {
				
			}	
		);
		
	}, function() {
		$('.more-arrow').animate(
			{
				fontSize: 12
			},
			500,
			function() {
					
			}	
		);	
	}
);

$('.more-arrow').hover(
	function() {
		$('.issues-nav').animate(
			{
				maxHeight: 150,
				height: 150
			},
			350,
			function() {
				$('.issues-nav').hover(
					function() {
						
					},
					function() {
						$('.issues-nav').animate(
							{
								maxHeight: 0,
								height: 0
							},
							200
						);
					}			
				);
			}
		);
	},
	function() {
		/*
		$('.issues-nav').animate(
			{
				maxHeight: 0,
				height: 0
			},
			200,
			function() {
				
			}
		);
		*/
	}
);



