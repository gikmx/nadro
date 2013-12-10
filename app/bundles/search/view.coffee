Bundle = require '/lib/bundle'

module.exports = class extends Bundle

	title : "Búsqueda"
	constructor: ->
		super '/bundles/search'

		@$ 'window', title: @title

		@$window.$ 'view#container'
		@$window.$container.$ 'searchBar'
		@$window.$container.$ 'button#camera'

	onOpen: (callback)->
		@$window.addEventListener 'open', (e)=> callback.call @, e
		@$window.open()

	onSearch:->
		args = Array::slice.call arguments
		value = if args.length and typeof args[0] is 'string' then args.shift() else false

		if not value
			@$window.$container.$searchBar.addEventListener 'return', (e)=>
				args.shift().call @, e
		else
			@$window.$container.$searchBar.value = value
			args.shift().call @, source: @$window.$container.$searchBar

	onClick:(callback)->
		@$window.$container.$camera.addEventListener "click", (e)=> callback.call @, e
