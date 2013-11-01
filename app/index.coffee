require('lib/setup')

$ ->
	$("#headline").lavaLamp()
	$('#banner_slider').revolution
		startwidth:940
		startheight:360
		navigationType:"none"
		shadow:0
		fullWidth:"on"
		stopLoop:"off"
		shuffle:"off"
		hideCaptionAtLimit:601
	$("#headline li a").on "click", (event) ->
		headerH = $('nav').height()
		$("#headline li").removeClass "current"
		$(this).parent().addClass "current"
		href = $(@).attr("href")
		$("html, body").animate
			scrollTop: $(href).offset().top - (headerH) + "px"
			duration: 1200
			easing: "easeInOutExpo"
		return false
		event.preventDefault()
	$("nav.sticky-nav").sticky
		topSpacing: 0
		className: 'sticky'
		wrapperClassName: 'main-menu-wrapper'
	$('.flexslider').flexslider
		animation: "slide"
		slideDirection: "horizontal"
		slideshow: false
		slideshowSpeed: 3500
		animationDuration: 500
		directionNav: true
		controlNav: false

# $actived = $("#headline li.active").find("a").attr("href")
# 	$(window).bind "scroll", (event) ->
# 		# hash = $(window.location).attr("hash")
# 		# console.log hash

# 		wTop = $(window).scrollTop()
# 		if $actived isnt "#home"
# 			if wTop < $("#home").offset().top
# 				$("#headline li a[href='#home']").parent().click()
# 		if $actived isnt "#about"
# 			if wTop < $("#about").offset().top
# 				$("#headline li a[href='#about']").parent().click()
# 		if $actived isnt "#jobs"
# 			if (wTop < $("#jobs").offset().top)
# 				$("#headline li a[href='#jobs']").parent().click()

