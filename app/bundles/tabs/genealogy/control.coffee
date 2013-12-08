Bundle = require '/lib/bundle'

module.exports = class extends Bundle

	constructor: ->
		
		super '/bundles/tabs/genealogy'

		@$ 'window', title: "Genealogía"
