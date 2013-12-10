module.exports =
	'view#container':
		layout: 'horizontal'
		height: Ti.UI.SIZE
		backgroundColor:'#EEEEEE'
		borderRadius:5
		width : Ti.UI.SIZE

	'searchBar':
		color   : "#437A1C"
		hintText: 'Ingresa No. de Lote o Serie'
		showCancel   : false
		showBookmark : false
		barColor     : "rgba(0,0,0,0)"
		width        : 300
		left         :10

	'button#camera':
		backgroundImage : 'camera.png'
		right:20
		width:30
		height:30
		top:10
		bottom:10
		left:5
