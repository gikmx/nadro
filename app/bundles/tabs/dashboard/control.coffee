Bundle = require '/lib/bundle'

module.exports = class extends Bundle

	constructor: ->

		super '/bundles/tabs/dashboard'

		@$ 'window', title: "Panel de control"
		