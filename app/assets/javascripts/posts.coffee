# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$window = $(window)
$title = $(".show-title")
titleHeight = $title.offset().top
$window.scroll ->
	scrollHeight = $window.scrollTop()
	console.log(scrollHeight);
	if (titleHeight < scrollHeight)
		$title.addClass("fix-show-title");
	else
	  $title.removeClass("fix-show-title")
#			$title.css({ "position": "relative", "top": "0"})



