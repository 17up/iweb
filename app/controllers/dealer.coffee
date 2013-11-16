Spine = require('spine')

class Dealer extends Spine.Controller
	constructor: ->
		super
		file = "/assets/json/countries.json"
		$.getJSON file, (json) =>
			view = require("views/countries")(countries: json)
			$(".country_selector").html view
module.exports = Dealer
