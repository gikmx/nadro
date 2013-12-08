Bundle = require '/lib/bundle'

module.exports = class extends Bundle

	$window: null

	constructor: ->

		# TODO: Setting a path shouldn't be necessary
		super '/bundles/login'

		@$ 'window', backgroundColor:'blue'

		alert(@)