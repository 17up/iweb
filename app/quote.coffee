Country = require("controllers/country")

class Quote
	constructor: ->
		c = new Country(el: $(".country_selector"))
		c.render("Location: ")

module.exports = Quote
