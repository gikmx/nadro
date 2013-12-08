Bundle = require '/lib/bundle'

module.exports = class extends Bundle

	$window: null

	constructor: ->

		# TODO: Setting a path shouldn't be necessary
		super '/bundles/login'

		@$ 'window',
			title: "Acceso"

		@$window.$ 'imageView#corner'

		@$window.$ 'view#login',
			width  : 967
			height : Ti.UI.SIZE
			layout : 'horizontal'

		@$window.$login.$ 'view.line'
		@$window.$login.$ 'view.line'

		alert(@$window.$login.$view)




		@$window.open()