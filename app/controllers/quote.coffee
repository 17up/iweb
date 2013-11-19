class Quote extends Spine.Controller
	constructor: ->
		super
		file = "/assets/json/countries.json"
		$.getJSON file, (json) =>
			view = require("views/countries")(countries: json,text: "Location: ")
			$(".country_selector .selector").html view

module.exports = Quote
