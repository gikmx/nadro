module.exports =

	'view#content':
		layout: 'absolute'

	'view#meds':
		width          : '50%'
		top            : 0
		height         : '100%'
		left           : '25%'

	'view#comp':
		left   : '100%'
		top    : 0
		width  : '50%'
		height         :'100%'

	'button':
		left            : 10
		width           : Ti.UI.FILL
		height          : 80
		title           : "Entrar"

	'label.tableHeader':
		backgroundColor : 'rgb(47,102,18)'
		height          : 30
		width           : Ti.UI.FILL
		color           : '#FFF'
		textAlign: Ti.UI.TEXT_ALIGNMENT_CENTER
		font :
			fontWeight : 'bold'
			fontSize   : '17pt'

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