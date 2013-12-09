module.exports =

	'imageView#corner':
		bottom : 10
		left   : 10
		width  : '33%'
		image  : 'logo.png'

	'view#contain':
		width  : '50%'
		height : Ti.UI.SIZE
		layout : 'horizontal'

	'button':
		left            : 10
		width           : Ti.UI.FILL
		height          : 80
		title           : "Entrar"

	'view#login':
		borderRadius    : 5
		backgroundColor : 'rgba(255,255,255, 0.9)'
		width           : '80%'
		height          : Ti.UI.SIZE
		layout          : 'vertical'

	'view#line':
		height : "1px"
		width  : Ti.UI.FILL
		left   : 20
		right  : 20
		backgroundColor: '#C8C8C8'

	# TODO: This should inherit from 'view', but it doesn't.
	'view.cont':
		width  : Ti.UI.FILL
		height : 40
		layout : 'horizontal'

	'label': 
		left      : 10
		right     : 10
		width     : '30%'
		height    : Ti.UI.FILL
		textAlign : 'right'

	'textField':
		width    : Ti.UI.FILL
		right    : 10
		color    : "#437A1C"
		hintText : 'Requerido'
