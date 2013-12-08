Bundle    = require '/lib/bundle'

Dashboard = require '/bundles/tabs/dashboard/control'
Genealogy = require '/bundles/tabs/genealogy/control'

module.exports = class extends Bundle

	constructor: ->

		super '/bundles/tabs'

		@dashboard = new Dashboard()
		@genealogy = new Genealogy()

		@$ 'tabGroup'

		@$tabGroup.addTab Ti.UI.createTab
			icon   : "dashboard.png"
			window : @dashboard.$window
			title  : @dashboard.title

		@$tabGroup.addTab Ti.UI.createTab
			icon   : "genealogia.png"
			window : @genealogy.$window
			title  : @genealogy.title

		@$tabGroup.open()