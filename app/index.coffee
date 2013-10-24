require('lib/setup')

$ ->
	if $("#headline").get(0)
		$("#headline").lavaLamp
			fx: "easeOutBack"
			speed: 700
			click: (b, a) ->
				return true
	$('#banner_slider').show().revolution
		delay:9000
		startwidth:940
		startheight:360
		hideThumbs:200
		thumbWidth:10
		thumbHeight:10
		thumbAmount:5
		navigationType:"none"
		navigationArrows:"verticalcentered"
		navigationStyle:"round"
		touchenabled:"on"
		onHoverStop:"on"
		navOffsetHorizontal:0
		navOffsetVertical:20
		shadow:0
		fullWidth:"on"
		stopLoop:"off"
		stopAfterLoops:-1
		stopAtSlide:-1
		shuffle:"off"
		hideSliderAtLimit:0
		hideCaptionAtLimit:601
		hideAllCaptionAtLilmit:0