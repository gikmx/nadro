module.exports = 

	'searchBar.header':
		hintText     : "Buscar Lote"

	'view#back':
		zIndex : 0
		height : Ti.UI.FILL
		width  : Ti.UI.FILL
		layout : 'horizontal'
		backgroundColor : '#FFF'

	'view#left':
		height : Ti.UI.FILL
		width  : '30%'
		layout : 'vertical'

	'view#leftUp':
		width  : Ti.UI.FILL
		height : '55%'

	'view#leftDw':
		width  : Ti.UI.FILL
		height : '45%'

	'view#center':
		height : Ti.UI.FILL
		width  : '40%'
		layout : 'vertical'

	'view#centerUp':
		width  : Ti.UI.FILL
		height : '80%'

	'view#centerDw':
		width  : Ti.UI.FILL
		height : '20%'

	'view#right':
		height : Ti.UI.FILL
		width  : '30%'


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

	'label.tableHeader':
		backgroundColor : 'rgb(47,102,18)'
		height          : 30
		width           : Ti.UI.FILL
		color           : '#FFF'
		textAlign: Ti.UI.TEXT_ALIGNMENT_CENTER
		font :
			fontWeight : 'bold'
			fontSize   : '17pt'

	'view.tableRow.oneLine':
		width: Ti.UI.FILL
		height: 40
		layout: 'horizontal'

	'label.tableRow.oneLine.bold':
		top    : 10
		bottom : 10
		left   : 20
		height : 20
		font   :
			fontWeight: 'bold'
			fontSize  : '16pt'
		color: '#444'

	'label.tableRow.oneLine.norm':
		top    : 10
		bottom : 10
		left   : 20
		height : 20
		font   :
			fontWeight: 'normal'
			fontSize  : '16pt'
		color: '#437A1C'


	'view.tableRow.twoLine':
		width: Ti.UI.FILL
		height: 60
		layout: 'vertical'


	'label.tableRow.twoLine.bold':
		top    : 10
		left   : 20
		height : 20
		font   :
			fontWeight: 'bold'
			fontSize  : '16pt'
		color: '#444'

	'label.tableRow.twoLine.norm':
		bottom : 10
		left   : 20
		height : 20
		font   :
			fontWeight: 'normal'
			fontSize  : '16pt'
		color: '#437A1C'

	'view.tableRow.triLine':
		width  : Ti.UI.FILL
		height : Ti.UI.SIZE
		layout : 'vertical'

	'label.tableRow.triLine.norm':
		top    : 10
		left   : 20
		height : Ti.UI.SIZE
		width  : Ti.UI.SIZE
		font   :
			fontWeight: 'normal'
			fontSize  : '16pt'
		color: '#437A1C'

	'imageView.tableRow.triLine':
		image  : 'eventos.png'
		height : 20
		left   : 20
