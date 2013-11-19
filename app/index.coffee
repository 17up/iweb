require('lib/setup')
Spine = require('spine')

$ ->
	cl = $("body").data().init
	new require("controllers/" + cl)(el: $("body"))



