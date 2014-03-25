(function($) {
	$(document).ready(function() {
		
		$('.navbar a .showChildren').click(function(e){
			e.preventDefault();
			var oldOpen = $('.navbar .open');		
			$(this).closest('li').addClass('open');
			oldOpen.removeClass('open');
			return false;
		});

		$('form fieldset > div.field:odd').addClass("odd");

		$(".page-toggle .button").click(function(){
			$(this).toggleClass("open");
			$(this).closest('li').toggleClass("open");
		});

	});
})(jQuery);
