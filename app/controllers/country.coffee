class Country extends Spine.Controller
	constructor: ->
		super
	render: (text) ->
		file = "/assets/json/countries.json"
		$.getJSON file, (json) =>
			view = require("views/countries")(countries: json,text: text)
			$(".selector",@$el).html view


module.exports = Country
