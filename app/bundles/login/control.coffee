Bundle = require '/lib/bundle'

module.exports = class extends Bundle

	$window: null

	constructor: ->

		# TODO: Setting a path shouldn't be necessary
		super '/bundles/login'

		@$ 'window',
			title: "Acceso"
			backgroundColor: "blue" # Del this

		@$window.$ 'view#contain1',
			backgroundColor: 'yellow'
			top: '0'
			left: '0'
			width: '50%'
			height: '50%'

		@$window.$ 'view#contain2',
			bottom: '0'
			right : '0'
			backgroundColor: 'red'
			width: '50%'
			height: '50%'


		@$window.$contain1.$ 'view',
			width: '50%'
			height: '50%'
			backgroundColor: 'green'

		@$window.$contain2.$ 'view',
			width: '50%'
			height: '50%'
			backgroundColor: 'cyan'


		@$window.open()