Bundle = require '/lib/bundle'

module.exports = class extends Bundle

	title: "Principal"

	constructor: ->

		super '/bundles/tabs/dashboard'

		@$ 'window', title: @title