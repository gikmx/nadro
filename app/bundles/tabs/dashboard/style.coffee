module.exports = 

	'searchBar.header':
		hintText     : "Buscar Lote"

	'view#back':
		zIndex : 0
		height : Ti.UI.FILL
		width  : Ti.UI.FILL
		layout : 'horizontal'
		backgroundColor : '#FFF'

	'view.left':
		height : Ti.UI.FILL
		width  : '30%'

	'view.center':
		height : Ti.UI.FILL
		width  : '40%'

	'view.right':
		height : Ti.UI.FILL
		width  : '30%'

	'view.halftop':
		height : '50%'
		width  : Ti.UI.FILL

	'view#frontLineLeft':
		zIndex : 99
		left   : '30%'
		width  :  1
		top    :  10
		bottom :  10
		height : Ti.UI.FILL
		backgroundColor: '#C8C8C8'

	'view#frontLineRight':
		zIndex : 99
		right  : '30%'
		width  :  1
		top    :  10
		bottom :  10
		height : Ti.UI.FILL
		backgroundColor: '#C8C8C8'

	'view#frontLineMiddle':
		zIndex : 99
		left   : 0
		right  : 0 
		height : 1
		top    : '50%'
		width  : '30%'
		backgroundColor: '#C8C8C8'
		

	'label.tableHeader':
		backgroundColor : 'rgb(47,102,18)'
		height          : 30
		width           : Ti.UI.FILL
		color           : '#FFF'
		textAlign: Ti.UI.TEXT_ALIGNMENT_CENTER
		font :
			fontWeight : 'bold'
			fontSize   : '17pt'

	'view.tableRow':
		width: Ti.UI.FILL
		height: 60
		layout: 'vertical'

	'label.tableRow.bold':
		top    : 10
		left   : 20
		height : 20
		font   :
			fontWeight: 'bold'
			fontSize  : '16pt'
		color: '#444'

	'label.tableRow.norm':
		bottom : 10
		left   : 20
		height : 20
		font   :
			fontWeight: 'normal'
			fontSize  : '16pt'
		color: '#437A1C'
