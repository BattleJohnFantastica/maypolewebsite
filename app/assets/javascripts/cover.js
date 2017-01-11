function boxResize() {
  var pageWidth = $(window).width();
  var pageHeight = $(window).height();
  var width = pageWidth - 40;
  var height = width/1.777;
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
     width = height * 1.777;
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