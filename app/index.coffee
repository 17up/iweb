require('lib/setup')

$ ->
	$('#banner_slider').revolution
		startwidth: 940
		startheight: 550
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

	$("#products .image").on "mouseover", ->
		$(@).find(".overlay").addClass "active"
	.on "mouseleave", ->
		$(@).find(".overlay").removeClass "active"


	init_map = ->
		secheltLoc = new google.maps.LatLng(-37.811366,144.971828)
		myMapOptions =
			center: secheltLoc
			mapTypeId: google.maps.MapTypeId.ROADMAP
			zoom: 3
			scrollwheel: false
			mapTypeControl: false
			zoomControl: false
			draggable: true
		theMap = new google.maps.Map(document.getElementById("google-map"), myMapOptions)
		marker = new google.maps.Marker
			map: theMap
			# icon: image
			# shadow: shadow
			draggable: false
			animation: google.maps.Animation.DROP
			position: secheltLoc
			visible: true
	google.maps.event.addDomListener(window, 'load', init_map)
