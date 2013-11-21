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

module.exports = Feature
