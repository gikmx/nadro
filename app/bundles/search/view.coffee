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

	onSearch:(callback)->
		@$window.$container.$searchBar.addEventListener "return", (e)=> callback.call @, e

	onClick:(callback)->
		@$window.$container.$camera.addEventListener "click", (e)=> callback.call @, e
