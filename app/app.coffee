Bundle = 
	login : new (require '/bundles/login/view')
	tabs  : new (require '/bundles/tabs/view')
	batch : new (require '/bundles/batch/view')

Bundle.login.onClick ->

	Bundle.batch.open()

	Bundle.batch.onSearch (e)->
		Bundle.batch.search e.source

###
Create a chrome for the barcode scanner.
###

###
Create a button that will trigger the barcode scanner.
###

# Note: while the simulator will NOT show a camera stream in the simulator, you may still call "Barcode.capture"
# to test your barcode scanning overlay.
#,
#        acceptedFormats: [
#            Barcode.FORMAT_QR_CODE
#        ]

###
Create a button that will show the gallery picker.
###
#,
#                acceptedFormats: [
#                    Barcode.FORMAT_QR_CODE
#                ]

###
Now listen for various events from the Barcode module. This is the module's way of communicating with us.
###
# reset = ->
#   scannedBarcodes = {}
#   scannedBarcodesCount = 0
#   cancelButton.title = "Cancel"
#   scanResult.text = " "
#   scanContentType.text = " "
#   scanParsed.text = " "

# ###
# Finally, we'll add a couple labels to the window. When the user scans a barcode, we'll stick information about it in
# to these labels.
# ###
# parseContentType = (contentType) ->
#   switch contentType
#     when Barcode.URL
#       "URL"
#     when Barcode.SMS
#       "SMS"
#     when Barcode.TELEPHONE
#       "TELEPHONE"
#     when Barcode.TEXT
#       "TEXT"
#     when Barcode.CALENDAR
#       "CALENDAR"
#     when Barcode.GEOLOCATION
#       "GEOLOCATION"
#     when Barcode.EMAIL
#       "EMAIL"
#     when Barcode.CONTACT
#       "CONTACT"
#     when Barcode.BOOKMARK
#       "BOOKMARK"
#     when Barcode.WIFI
#       "WIFI"
#     else
#       "UNKNOWN"
# parseResult = (event) ->
#   msg = ""
#   switch event.contentType
#     when Barcode.URL
#       msg = "URL = " + event.result
#     when Barcode.SMS
#       msg = "SMS = " + JSON.stringify(event.data)
#     when Barcode.TELEPHONE
#       msg = "Telephone = " + event.data.phonenumber
#     when Barcode.TEXT
#       msg = "Text = " + event.result
#     when Barcode.CALENDAR
#       msg = "Calendar = " + JSON.stringify(event.data)
#     when Barcode.GEOLOCATION
#       msg = "Latitude = " + event.data.latitude + "\nLongitude = " + event.data.longitude
#     when Barcode.EMAIL
#       msg = "Email = " + event.data.email + "\nSubject = " + event.data.subject + "\nMessage = " + event.data.message
#     when Barcode.CONTACT
#       msg = "Contact = " + JSON.stringify(event.data)
#     when Barcode.BOOKMARK
#       msg = "Bookmark = " + JSON.stringify(event.data)
#     when Barcode.WIFI
#       return "WIFI = " + JSON.stringify(event.data)
#     else
#       msg = "unknown content type"
#   msg
# Barcode = require("ti.barcode")
# Barcode.allowRotation = true
# Barcode.displayedMessage = ""
# Barcode.useLED = true
# window = Ti.UI.createWindow(backgroundColor: "white")
# scrollView = Ti.UI.createScrollView(
#   contentWidth: "auto"
#   contentHeight: "auto"
#   top: 0
#   showVerticalScrollIndicator: true
#   layout: "vertical"
# )
# overlay = Ti.UI.createView(
#   backgroundColor: "transparent"
#   top: 0
#   right: 0
#   bottom: 0
#   left: 0
# )
# switchButton = Ti.UI.createButton(
#   title: (if Barcode.useFrontCamera then "Back Camera" else "Front Camera")
#   textAlign: "center"
#   color: "#000"
#   backgroundColor: "#fff"
#   style: 0
#   font:
#     fontWeight: "bold"
#     fontSize: 16

#   borderColor: "#000"
#   borderRadius: 10
#   borderWidth: 1
#   opacity: 0.5
#   width: 220
#   height: 30
#   bottom: 10
# )
# switchButton.addEventListener "click", ->
#   Barcode.useFrontCamera = not Barcode.useFrontCamera
#   switchButton.title = (if Barcode.useFrontCamera then "Back Camera" else "Front Camera")

# overlay.add switchButton
# toggleLEDButton = Ti.UI.createButton(
#   title: (if Barcode.useLED then "LED is On" else "LED is Off")
#   textAlign: "center"
#   color: "#000"
#   backgroundColor: "#fff"
#   style: 0
#   font:
#     fontWeight: "bold"
#     fontSize: 16

#   borderColor: "#000"
#   borderRadius: 10
#   borderWidth: 1
#   opacity: 0.5
#   width: 220
#   height: 30
#   bottom: 40
# )
# toggleLEDButton.addEventListener "click", ->
#   Barcode.useLED = not Barcode.useLED
#   toggleLEDButton.title = (if Barcode.useLED then "LED is On" else "LED is Off")

# overlay.add toggleLEDButton
# cancelButton = Ti.UI.createButton(
#   title: "Cancel"
#   textAlign: "center"
#   color: "#000"
#   backgroundColor: "#fff"
#   style: 0
#   font:
#     fontWeight: "bold"
#     fontSize: 16

#   borderColor: "#000"
#   borderRadius: 10
#   borderWidth: 1
#   opacity: 0.5
#   width: 220
#   height: 30
#   top: 20
# )
# cancelButton.addEventListener "click", ->
#   Barcode.cancel()

# overlay.add cancelButton
# scanCode = Ti.UI.createButton(
#   title: "Scan Code"
#   width: 200
#   height: 60
#   top: 20
# )
# scanCode.addEventListener "click", ->
#   reset()
#   Barcode.capture
#     animate: true
#     overlay: overlay
#     showCancel: false
#     showRectangle: false
#     keepOpen: true


# scrollView.add scanCode
# scanImage = Ti.UI.createButton(
#   title: "Scan Image from Gallery"
#   width: 200
#   height: 60
#   top: 20
# )
# scanImage.addEventListener "click", ->
#   reset()
#   Ti.Media.openPhotoGallery success: (evt) ->
#     Barcode.parse image: evt.media


# scrollView.add scanImage
# scannedBarcodes = {}
# scannedBarcodesCount = 0
# Barcode.addEventListener "error", (e) ->
#   scanContentType.text = " "
#   scanParsed.text = " "
#   scanResult.text = e.message

# Barcode.addEventListener "cancel", (e) ->
#   Ti.API.info "Cancel received"

# Barcode.addEventListener "success", (e) ->
#   Ti.API.info "Success called with barcode: " + e.result
#   unless scannedBarcodes["" + e.result]
#     scannedBarcodes[e.result] = true
#     scannedBarcodesCount += 1
#     cancelButton.title = "Finished (" + scannedBarcodesCount + " Scanned)"
#     scanResult.text += e.result + " "
#     scanContentType.text += parseContentType(e.contentType) + " "
#     scanParsed.text += parseResult(e) + " "

# scrollView.add Ti.UI.createLabel(
#   text: "You may need to rotate the device"
#   top: 10
#   height: Ti.UI.SIZE or "auto"
#   width: Ti.UI.SIZE or "auto"
# )
# scrollView.add Ti.UI.createLabel(
#   text: "Result: "
#   textAlign: "left"
#   top: 10
#   left: 10
#   color: "black"
#   height: Ti.UI.SIZE or "auto"
# )
# scanResult = Ti.UI.createLabel(
#   text: " "
#   textAlign: "left"
#   top: 10
#   left: 10
#   color: "black"
#   height: Ti.UI.SIZE or "auto"
# )
# scrollView.add scanResult
# scrollView.add Ti.UI.createLabel(
#   text: "Content Type: "
#   top: 10
#   left: 10
#   textAlign: "left"
#   color: "black"
#   height: Ti.UI.SIZE or "auto"
# )
# scanContentType = Ti.UI.createLabel(
#   text: " "
#   textAlign: "left"
#   top: 10
#   left: 10
#   color: "black"
#   height: Ti.UI.SIZE or "auto"
# )
# scrollView.add scanContentType
# scrollView.add Ti.UI.createLabel(
#   text: "Parsed: "
#   textAlign: "left"
#   top: 10
#   left: 10
#   color: "black"
#   height: Ti.UI.SIZE or "auto"
# )
# scanParsed = Ti.UI.createLabel(
#   text: " "
#   textAlign: "left"
#   top: 10
#   left: 10
#   color: "black"
#   height: Ti.UI.SIZE or "auto"
# )
# scrollView.add scanParsed
# window.add scrollView
# window.open()