class Feature
	constructor: ->
		$('.sider_bar').affix
			offset:
				top: 500
				bottom: 100
		$("#nav.sticky-nav").sticky
			topSpacing: 0
			className: 'sticky'
			wrapperClassName: 'main-menu-wrapper'
		$(".sider_bar li a").on "click", (event) ->
			headerH = $("nav.navigation").height() + 10
			href = $(@).attr("href")
			$("html, body").animate
				scrollTop: $(href).offset().top - (headerH) + "px"
				duration: 1200
				easing: "easeInOutExpo"
			return false
			event.preventDefault()
module.exports = Feature
