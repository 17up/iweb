class Category extends Spine.Controller
	events:
		"click .p_cate": "showCategory"
	constructor: ->
		super
		$(".catelog button:first").trigger "click"
	showCategory: (e) ->
		$target = $(e.currentTarget)
		$target.addClass("active").siblings().removeClass("active")
		rel = $target.attr "rel"
		name = $target.text()
		$(".page_title .pname").text name
module.exports = Category
