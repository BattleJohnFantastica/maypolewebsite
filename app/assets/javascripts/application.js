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



if($(".tt-hint").text)
console.log($(".tt-hint").text);
  
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
		
$('.boxMain').click(function(){
  var href = $(this).attr('href');
  window.location.replace(href);
});

$('.boxPicture').click(function(){
  var href = $(this).attr('href');
  if(href){
    window.location.replace(href);
  }
});

$('.tL').click(function(){
  var href = $(this).attr('href');
  if(href){
    window.location.replace(href);
  }
});

var numbers = new Bloodhound({
  datumTokenizer: Bloodhound.tokenizers.obj.whitespace('num'),
  queryTokenizer: Bloodhound.tokenizers.whitespace,
  local: data
});

// initialize the bloodhound suggestion engine
numbers.initialize();

// instantiate the typeahead UI
$('.input-lg').typeahead({
  autocomplete: true
},
{
  displayKey: 'num',
  source: numbers.ttAdapter()
});

// $('.input-lg').typeahead(null, {
  // displayKey: 'num',
  // autoselect: true,
  // source: numbers.ttAdapter()
// });


// function pageSearch(e){
    // if (e.which == 13) {
    // // // $('.tt-selectable').first().click();
    // // var inputVal = $(".tt-input").val();
    // // var dic = {};
    // // data2.forEach(function(val){dic[val[1]] = val[0];});
    // // console.log("Data 2 "  + data2 + dic[inputVal]);
    // // var a = data2[1];
    // // if(dic[inputVal]){
    // // window.location.replace(dic[inputVal]);
    // // } else {
    // // window.location.replace("nopage");
    // // }
    // console.log(glob);
  // }
// }

if ( ! Modernizr.objectfit ) {
  $('.slick-slide').each(function () {
    var $container = $(this),
        imgUrl = $container.find('img').prop('src');
    if (imgUrl) {
      $container.find('img').remove();
      $container
        .css('backgroundImage', 'url(' + imgUrl + ')')
        .addClass('compat-object-fit');
    }  
  });
}

var dic = {};
data2.forEach(function(val){dic[val[1].toLowerCase()] = val[0];});
function page(e){
    if (e.which == 13) {
      var inputVal = glob.toLowerCase()
      if(glob !== "") {
        window.location.replace(dic[inputVal]); 
      } else {
        var inputVal2 = $(".tt-input").val().toLowerCase();
        if(dic[inputVal2]){
          window.location.replace(dic[inputVal2]);
        } else {
          window.location.replace("nopage");
        }
        
      }
  }
}

$('.tt-input').keypress(function (e) {
  page(e);
});

});

