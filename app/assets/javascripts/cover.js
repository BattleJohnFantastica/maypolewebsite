function boxResize() {
  var pageWidth = $(window).width();
  var pageHeight = $(window).height();
  var width = pageWidth - 40;
  var height = width/1.9;
  if (pageHeight > height + 20) {
    if (height > 100){
      $(".videoBox").css("height", height);
      $(".videoBox").css("width", width);
      $(".videoBox").css("left", width);
      $(".videoBox").css("left", (pageWidth - width)/2);
      $(".videoBox").css("top", (pageHeight - height)/2);
    } else {
      //display -- browser too small to display video message
    }
  } else {
     height = pageHeight - 40;
     width = height * 1.9;
     $(".videoBox").css("height", height);
     $(".videoBox").css("width", width);
     $(".videoBox").css("left", (pageWidth - width)/2);
     $(".videoBox").css("top", (pageHeight - height)/2);
  }
 }
 
 boxResize();

 $(window).resize(function() {
   boxResize();
   });
   
$(".boxVideo").click(function() {
  var href = $(this).attr('href');
  $(".iframeOne").attr("src", href);
  $(".cover").css("display", "inherit");
  $(".cover").fadeTo(500, 1);
  endCinema();
})

function endCinema(){
  $(".cover").click(function() {
    close();
  });
   $(".close-button").click(function() {
    close();
  });
}

function close() {
  $(".cover").css("display", "none"); 
  $('.iframeOne')[0].contentWindow.postMessage('{"event":"command","func":"' + 'stopVideo' + '","args":""}', '*');
}