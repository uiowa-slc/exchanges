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
