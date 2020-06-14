
$(document).ready(function () {
    //ajax
    $.ajaxSetup({
        headers: {
            'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
        }
    });
  // faq
  $(".toggle-accordion").on("click", function() {
    var accordionId = $(this).attr("accordion-id"),
      numPanelOpen = $(accordionId + ' .collapse.in').length;
    
    $(this).toggleClass("active");

    if (numPanelOpen == 0) {
      openAllPanels(accordionId);
    } else {
      closeAllPanels(accordionId);
    }
  })

  openAllPanels = function(aId) {
    console.log("setAllPanelOpen");
    $(aId + ' .panel-collapse:not(".in")').collapse('show');
  }
  closeAllPanels = function(aId) {
    console.log("setAllPanelclose");
    $(aId + ' .panel-collapse.in').collapse('hide');
  }
// ==========================================================

    $().ellipsis(120,'.short-txt');
    $().ellipsis(200,'.footer-txt');
    $(".regular").slick({
        dots: false,
        infinite: true,
        slidesToShow: 4,
        slidesToScroll: 1,
        prevArrow: '<button class="slick-prev fas fa-chevron-left" aria-label="Previous" type="button">Previous</button>',
        nextArrow: '<button class="slick-next fas fa-chevron-right" aria-label="Next" type="button">Next</button>',
        responsive: [{
            breakpoint: 520,
            settings: {
              slidesToShow: 1,
              slidesToScroll: 1,
            }
          },
          {
            breakpoint: 1000,
            settings: {
              slidesToShow: 2,
              slidesToScroll: 1,
            }
          },
          {
            breakpoint: 1100,
            settings: {
              slidesToShow: 3,
              slidesToScroll: 1,
            }
          }
        ]
    });
    $(".regular-team").slick({
      dots: false,
      infinite: true,
      // centerMode: true,
      slidesToShow: 3,
      slidesToScroll: 1,
      prevArrow: '<button class="slick-prev fas fa-chevron-left" aria-label="Previous" type="button">Previous</button>',
      nextArrow: '<button class="slick-next fas fa-chevron-right" aria-label="Next" type="button">Next</button>',
      responsive: [{
          breakpoint: 520,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1,
          }
        },
        {
          breakpoint: 1000,
          settings: {
            slidesToShow: 2,
            slidesToScroll: 1,
          }
        }
      ]
  });
  $(".regular-partner").slick({
    dots: false,
    infinite: true,
    slidesToShow: 5,
    slidesToScroll: 1,
    autoplay:true,
    prevArrow: '<button class="slick-prev fas fa-chevron-left" aria-label="Previous" type="button">Previous</button>',
    nextArrow: '<button class="slick-next fas fa-chevron-right" aria-label="Next" type="button">Next</button>',
    responsive: [{
        breakpoint: 520,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1,
        }
      },
      {
        breakpoint: 1000,
        settings: {
          slidesToShow: 3,
          slidesToScroll: 1,
        }
      }
    ]
});
    // hover in about pag
    $(this).find(".goal-icon").css("display", "none");
    $(".card-hover").hover(function(){
      $(this).css("background-color", "#CEAC3E");
      $(this).find(".diamond").css("display", "none");
      $(this).find(".goal-icon").css("display", "block");
      $(this).find(".grey-txt").css("color", "#fff");
      $(this).find(".gray").css("color", "#fff");
      }, function(){
      $(this).css("background-color", "#fff");
      $(this).find(".diamond").css("display", "block");
      $(this).find(".goal-icon").css("display", "none");
      $(this).find(".grey-txt").css("color", "#7F7F7F");
       $(this).find(".gray").css("color", "#A6A6A6");
    });

});

$(".fa-eye").click(function(){
  var x = $(this).next(".pw")
  var y = x.attr('type');
  if(y === "password") {
    x.attr('type','text');
  }
  else {
    x.attr('type','password');
  }
});
// faq
$("#accordion  li").click(function () {
  $(this).siblings().find(".question-header").removeClass("bg");
  $(this).find(".question-header").toggleClass("bg");

});
$("#accordion  li").click(function () {
  $(this).siblings().find(".question-header").removeClass("fa-minus");
  $(this).siblings().find("span").addClass("fa-plus");
  $(this).find("span").toggleClass("fa-minus fa-plus");
});

var x= $(".collapse.show")
  x.prev().addClass("bg");
  x.prev().find("span").removeClass("fa-plus");
  x.prev().find("span").addClass("fa-minus");

