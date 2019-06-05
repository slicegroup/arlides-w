setTimeout(function () {
  $('#eapps-instagram-feed-1').find('a').last().css('display', 'none')
}, 1500)
$('#myModal').on('shown.bs.modal', function () {
  $('#myInput').trigger('focus')
})

$('.multiple-items').slick({
  infinite: true,
  arrows: false,
  slidesToShow: 4,
  slidesToScroll: 2,
  dots: true,


  responsive: [
    {
      breakpoint: 500,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1,

      }
    },

    {
      breakpoint: 900,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2,

      }
    },

    {
      breakpoint: 1200,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 3,

      }
    }
  ]
});
// PRELOAD

$(document).ready(function () {
  setTimeout(function () {
    $('.wrapper').addClass('loaded');

  }, 1000);
});


jQuery(function () {

  $(window).load(function () {

    $('.wrapper').removeClass('preload');

  });

});

// FORM APP

$(".input-effect input, textarea").focusout(function () {
  if ($(this).val() != "") {
    $(this).addClass("has-content");
  } else {
    $(this).removeClass("has-content");
  }
})


function cambiar() {
  var pdrs = document.getElementById('file-upload').files[0].name;
  document.getElementById('info').innerHTML = pdrs;
}
