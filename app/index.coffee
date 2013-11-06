require('lib/setup')

$ ->
	$('#banner_slider').revolution
		startwidth: 940
		startheight: 650
		navigationType:"none"
		shadow:0
		fullWidth:"on"
		stopLoop:"off"
		shuffle:"off"
		hideCaptionAtLimit:601
	$("#headline li a").on "click", (event) ->
		headerH = $("nav.navigation").height()
		href = $(@).attr("href")
		$("html, body").animate
			scrollTop: $(href).offset().top - (headerH) + "px"
			duration: 1200
			easing: "easeInOutExpo"
		return false
		event.preventDefault()
	$("#nav.sticky-nav").sticky
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



