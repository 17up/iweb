init_map = ->
	secheltLoc = new google.maps.LatLng(-37.811366,144.971828)
	myMapOptions =
		center: secheltLoc
		mapTypeId: google.maps.MapTypeId.ROADMAP
		zoom: 2
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
