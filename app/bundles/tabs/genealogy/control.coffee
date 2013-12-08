Bundle = require '/lib/bundle'

module.exports = class extends Bundle

	title: "Genealogía"

	constructor: ->
		
		super '/bundles/tabs/genealogy'

		@$ 'window', title: @title
