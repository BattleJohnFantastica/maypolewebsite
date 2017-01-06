// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


$(document).ready(function(){
$('.responsive').slick({
  infinite: true,
  slidesToShow: 1,
  slidesToScroll: 1,
  autoplay: true,
  autoplaySpeed: 3000,
  arrows: false
  
});
  
$('.second-mega').click(function(){
    $(".responsive").slick('slickNext');
    $('.responsive').slick('slickPause');
});
  
$('.first-mega').click(function(){
    $(".responsive").slick('slickPrev');
    $('.responsive').slick('slickPause');
});

$('.examples-slick').slick({
  infinite: true,
  slidesToShow: 3,
  slidesToScroll: 3
});
		
});
