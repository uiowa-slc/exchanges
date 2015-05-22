
;(function() {
    // Initialize
    var bLazy = new Blazy();
})();
$(document).foundation({
  equalizer : {
    // Specify if Equalizer should make elements equal height once they become stacked.
    equalize_on_stack: true
  }
});

/*var observer = new FontFaceObserver("futura-pt", {
  weight: 400
});

observer.check().then(function () {
  console.log('Font is available');
}, function () {
  console.log('Font is not available');
});*/

/*
	Fonts are loaded through @font-face rules in the CSS whenever an element references them.
	FontFaceObserver creates a referencing element to trigger the font request, and lsisten for font load events.
	When all 3 fonts are loaded, we enable them by adding a class to the html element
*/
(function( w ){
	// if the class is already set, we're good.
	if( w.document.documentElement.className.indexOf( "fonts-loaded" ) > -1 ){
		return;
	}
	var fontA = new w.FontFaceObserver( "futura-pt");
	var fontB = new w.FontFaceObserver( "kepler-std");
	w.Promise
		.all([fontA.check(), fontB.check()])
		.then(function(){
			w.document.documentElement.className += " fonts-loaded";
		});
}( this ));

