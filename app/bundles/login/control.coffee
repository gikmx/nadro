Bundle = require '/lib/bundle'

module.exports = class extends Bundle

	constructor: ->

		# TODO: Setting a path shouldn't be necessary
		super '/bundles/login'

		@$ 'window',
			title: "Acceso"

		@$window.$ 'imageView#corner'

		@$window.$ 'view#login'

		@$window.$login.$ 'view.cont'
		@$window.$login.$ 'view#line'
		@$window.$login.$ 'view.cont'

		@$window.$login.$view[0].$ 'label', text: "Usuario:"
		@$window.$login.$view[0].$ 'textField'
		@$window.$login.$view[1].$ 'label', text: "Contraseña:"
		@$window.$login.$view[1].$ 'textField'

		@$window.open()

