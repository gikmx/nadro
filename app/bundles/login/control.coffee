Bundle = require '/lib/bundle'

module.exports = class extends Bundle

	constructor: ->

		# TODO: Setting a path shouldn't be necessary
		super '/bundles/login'

		@$ 'window',
			title: "Acceso"

		@$window.$ 'imageView#corner'

		@$window.$ 'view#login'
		@$window.$login.$ 'view.line'
		@$window.$login.$ 'view.line'

		alert(@$window.$login.$view)




		@$window.open()