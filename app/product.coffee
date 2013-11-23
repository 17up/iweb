Category = require("controllers/category")

class Product
	constructor: ->
		new Category(el: $(".catelog"))
		$(".catelog").sticky
			topSpacing: 0
			className: 'sticky'
			wrapperClassName: 'main-menu-wrapper'
module.exports = Product
