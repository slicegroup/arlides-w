
$('.slick-banner').slick({
  arrows: false,
  dots: true
});


$('.multiple-items').slick({
  infinite: true,
  slidesToShow: 4,
  slidesToScroll: 2,
  dots: true,

  responsive: [
    {
      breakpoint: 700,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2,

      }
    }
  ]
});
