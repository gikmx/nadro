Bundle = require '/lib/bundle'

Barcode = require 'ti.barcode'

Barcode.allowRotation    = false
Barcode.displayedMessage = ''
Barcode.useLED           = false

module.exports = class extends Bundle

	beenOpened = false

	title: 'Lector de Códigos QR'

	constructor: ->
		super '/bundles/qread'

		@$ 'window', title: @title

		@$ 'view#overlay'
		@$overlay.$ 'button#cancel'

		@$window.addEventListener 'open', => Barcode.capture
			animate       : false
			overlay       : @$overlay
			showCancel    : false
			showRectangle : false
			keepOpen      : false

		@$overlay.$cancel.addEventListener 'click', -> Barcode.cancel()
		
		Barcode.addEventListener 'cancel', (e)=> @$window.close()

	onResult: (callback)->

		onSuccess = (e)=>
			@$window = null
			callback e.result

		Barcode.removeEventListener('success', onSuccess) if beenOpened
		Barcode.addEventListener('success', onSuccess)
		
		@$window.open()
		beenOpened = true