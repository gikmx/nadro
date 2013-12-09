Data   =
	laboratorio: require '/data/laboratorio'

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
		
		@$window.$content.$back.$view[0].$ 'view.halftop'
		@$window.$content.$back.$view[0].$ 'view.halftop'

		@$window.$content.$back.$view[0].$view[0].$ 'tableView'


	onSearch: (callback)->
		@$window.$header.$searchBar.addEventListener 'return', (e)=>
			callback.call @, e

	search: (text)->

		alert(@$ 'tableViewRow', __readOnly: true)


		return 
		data = []
		for lab, i in Data.laboratorio
			alert($row)


