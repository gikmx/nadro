Bundle = require '/lib/bundle'

module.exports = class extends Bundle

	title: "Principal"

	constructor: ->

		super '/bundles/tabs/dashboard'

		@$ 'window.tabbed', title: @title

		@$window.$ 'view#header'

		@$window.$header.$ 'searchBar.header'
		@$window.$header.$ 'label.header', text: @title

		@$window.$ 'view#content'

		@$window.$content.$ 'view#back'
		
		@$window.$content.$ 'view#frontLineHeader'
		@$window.$content.$ 'view#frontLineLeft'
		@$window.$content.$ 'view#frontLineRight'
		@$window.$content.$ 'view#frontLineMiddle'

		@$window.$content.$back.$ 'view.left', layout:'vertical'
		@$window.$content.$back.$ 'view.center'
		@$window.$content.$back.$ 'view.right'
		


		return

		@$window.$content.$view[0].$ 'view.halftop'
		@$window.$content.$view[0].$ 'view.halftop'


