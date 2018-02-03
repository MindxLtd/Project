(function($) {
  "use strict"; // Start of use strict
  // Configure tooltips for collapsed side navigation
  $('.navbar-sidenav [data-toggle="tooltip"]').tooltip({
    template: '<div class="tooltip navbar-sidenav-tooltip" role="tooltip"><div class="arrow"></div><div class="tooltip-inner"></div></div>'
  })
  // Toggle the side navigation
  $("body").toggleClass("sidenav-toggled");
  
    $(".navbar-sidenav .nav-link-collapse").addClass("collapsed");
	
  $("#sidenavToggler").click(function(e) {
    e.preventDefault();
    $("body").toggleClass("sidenav-toggled");
    $(".navbar-sidenav .nav-link-collapse").addClass("collapsed");
    $(".navbar-sidenav .sidenav-second-level, .navbar-sidenav .sidenav-third-level").removeClass("show");
  });
  // Force the toggled class to be removed when a collapsible nav link is clicked
  $(".navbar-sidenav .nav-link-collapse").click(function(e) {
    e.preventDefault();
    $("body").removeClass("sidenav-toggled");
	
  });
  $(".overlay").click(function(e) {
    e.preventDefault();
    $("body").toggleClass("sidenav-toggled");
	
  });
  // Prevent the content wrapper from scrolling when the fixed side navigation hovered over
  $('body.fixed-nav .navbar-sidenav, body.fixed-nav .sidenav-toggler, body.fixed-nav .navbar-collapse').on('mousewheel DOMMouseScroll', function(e) {
    var e0 = e.originalEvent,
      delta = e0.wheelDelta || -e0.detail;
    this.scrollTop += (delta < 0 ? 1 : -1) * 30;
    e.preventDefault();
	
  });
  // Scroll to top button appear
  $(document).scroll(function() {
    var scrollDistance = $(this).scrollTop();
    if (scrollDistance > 100) {
      $('.scroll-to-top').fadeIn();
    } else {
      $('.scroll-to-top').fadeOut();
    }
  });
  // Configure tooltips globally
  $('[data-toggle="tooltip"]').tooltip()
  // Smooth scrolling using jQuery easing
  $(document).on('click', 'a.scroll-to-top', function(event) {
    var $anchor = $(this);
    $('html, body').stop().animate({
      scrollTop: ($($anchor.attr('href')).offset().top)
    }, 1000, 'easeInOutExpo');
    event.preventDefault();
  });
})(jQuery); // End of use strict

//go to top scrool


//rightside slide
$('#to-top').fadeOut();
	$(window).scroll(function() {
    if ($(this).scrollTop()) {
        $('#to-top').fadeIn();
    } else {
        $('#to-top').fadeOut();
    }
});
$("#to-top").click(function() {
     $("html, body").animate({ scrollTop: 0 }, "slow");
     return false;
  });
// ends here

function openNav() {
    document.getElementById("Ay-Sidenav").style.width = "250px";
    document.getElementById("main").style.marginRight = "250px";
	$(".r-overlay").show();
}

function closeNav() {
    document.getElementById("Ay-Sidenav").style.width = "0";
    document.getElementById("main").style.marginRight= "0";
	$(".r-overlay").hide();
}
$(".r-overlay").click(function() {
      document.getElementById("Ay-Sidenav").style.width = "0";
    document.getElementById("main").style.marginRight= "0";
	$(".r-overlay").hide();
  });

//quick action
 $(".quck-action").click(function () {
        $(".quick-drop").toggle();
		$( ".fa-chevron-down" ).toggleClass( "fa-chevron-up" );
		
 });

 
 