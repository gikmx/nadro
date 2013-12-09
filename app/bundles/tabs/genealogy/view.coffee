Bundle = require '/lib/bundle'

module.exports = class extends Bundle

	title: "Genealogía"

	constructor: ->
		
		super '/bundles/tabs/genealogy'

		@$ 'window.tabbed', title: @title

		@$window.$ 'view#header'
		@$window.$header.$ 'label.header', text: @title
