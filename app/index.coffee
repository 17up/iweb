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