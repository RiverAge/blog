# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$window = $(window)
$title = $(".post-show-title")
titleHeight = $title.offset().top
$window.scroll ->
	scrollHeight = $window.scrollTop()
	if (titleHeight < scrollHeight)
		$title.addClass("fixed-post-show-title");
	else
	  $title.removeClass("fixed-post-show-title")
#			$title.css({ "position": "relative", "top": "0"})



