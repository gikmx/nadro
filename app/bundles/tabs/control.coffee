Bundle    = require '/lib/bundle'

Dashboard = require '/bundles/tabs/dashboard/control'
Genealogy = require '/bundles/tabs/genealogy/control'

module.exports = class extends Bundle

	constructor: ->
		super '/bundles/tabs'

		@$ 'tabGroup'

		@dashboard = new Dashboard()
		@genealogy = new Genealogy()

		@$tabGroup.$ 'tab#dashboard',
			title  : @dashboard.$window.title
			window : @dashboard.$window

		@$tabGroup.$ 'tab#genealogy',
			title  : @genealogy.$window.title
			window : @genealogy.$window

		try
			@$tabGroup.open()
		catch e
			alert(e)
		
		

	open: ()->
		try
			@$tabGroup.open()
		catch e
			throw new Error e
		