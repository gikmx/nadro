Bundle = require '/lib/bundle'

Barcode = require 'ti.barcode'

Barcode.allowRotation    = true
Barcode.displayedMessage = ""
Barcode.useLED           = true

module.exports = class extends Bundle

	title: "Lector de Códigos QR"

	constructor: ->
		super '/bundles/qread'

		@$ 'window', title: @title

		@$window.$ 'view#overlay'
		@$window.$overlay.$ 'button#cancel'

		@$window.addEventListener "open", =>
			Barcode.capture
				animate       : true
				overlay       : @$window.$overlay
				showCancel    : false
				showRectangle : false
				keepOpen      : false

		@$window.$overlay.$cancel.addEventListener "click", -> Barcode.cancel()


		Barcode.addEventListener "success", (e) ->
			alert(e.result)

		@$window.open()


