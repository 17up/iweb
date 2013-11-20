Category = require("controllers/category")

class Product
	constructor: ->
		new Category(el: $(".catelog"))

module.exports = Product
