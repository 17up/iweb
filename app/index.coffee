require('lib/setup')

$ ->
	cl = $("body").data().init
	new require("controllers/" + cl)(el: $("body"))



