(function() {
    var bLazy = new Blazy();
})();

$(document).foundation({
  equalizer : {
    // Specify if Equalizer should make elements equal height once they become stacked.
    equalize_on_stack: true,
    after_height_change: function(){
      $('.layout').addClass('equalized');
    }
  }
});

$('.popup-link').magnificPopup({
  type: 'image'
});

$('.slideshow').magnificPopup({
    delegate: 'a',
    type: 'image',
    tLoading: 'Loading image #%curr%...',
    mainClass: 'mfp-img-mobile',
    gallery: {
        enabled: true,
        navigateByImgClick: true,
        preload: [0,1] // Will preload 0 - before current, and 1 after the current image
    },
});
