Bundle = require 'lib/bundle'
Barcode = require("ti.barcode")

Barcode.allowRotation = true
Barcode.displayedMessage = ""
Barcode.useLED = true

module.exports = class extend Bundle

	title: "QR Reader"

	constructor: ->

		super '/bundles/qrreader'

		@$ 'window', title:title

Barcode.addEventListener "success", (e) ->
	Ti.API.info "Success called with barcode: " + e.result
	unless scannedBarcodes["" + e.result]
		scannedBarcodes[e.result] = true
		scannedBarcodesCount += 1
		cancelButton.title = "Finished (" + scannedBarcodesCount + " Scanned)"
		scanResult.text += e.result + " "
		scanContentType.text += parseContentType(e.contentType) + " "
		scanParsed.text += parseResult(e) + " "
		alert('holaaa')

		
