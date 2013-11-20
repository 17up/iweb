Country = require("controllers/country")

class Dealer
	constructor: ->
		c = new Country(el: $(".country_selector"))
		c.render()

module.exports = Dealer
