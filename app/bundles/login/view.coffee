Bundle = require '/lib/bundle'

module.exports = class extends Bundle

	constructor: ->

		# TODO: Setting a path shouldn't be necessary
		super '/bundles/login'

		@$ 'window',
			title: "Acceso"

		@$window.$ 'imageView#corner'

		@$window.$ 'view#contain'

		@$window.$contain.$ 'view#login'
		@$window.$contain.$ 'button'

		@$window.$contain.$login.$ 'view.cont'
		@$window.$contain.$login.$ 'view#line'
		@$window.$contain.$login.$ 'view.cont'

		@$window.$contain.$login.$view[0].$ 'label', text: "Usuario:"
		@$window.$contain.$login.$view[0].$ 'textField'
		@$window.$contain.$login.$view[1].$ 'label', text: "Contraseña:"
		@$window.$contain.$login.$view[1].$ 'textField'

		@$window.open()

	onClick: (callback)->
		@$window.$contain.$button.addEventListener 'click', (e)=>
			@$window.close animated: true
			callback.call @, e
