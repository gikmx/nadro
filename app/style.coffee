module.exports =

	"window":
		backgroundImage : "bg.png"

	"window.tabbed":
		backgroundImage : "bg.png"	
		layout          : 'vertical'
		navBarHidden    : true
		tabBarHidden    : false

	"button":
		borderRadius    : 5
		font            : fontWeight: 'bold'
		color           : '#FFFFFF'
		backgroundColor : '#70A804'

	'view#header':	
		backgroundColor: 'rgb(227,227,227)'
		top            : 0
		width          : Ti.UI.FILL
		height         : 65

	'label.header':
		height  : Ti.UI.FILL
		right   : 15
		top     : 15
		color   : "#666"
		font    :
			fontWeight: 'bold'
			fontSize  : '18pt'

	'searchBar.header':
		barColor     : "rgba(255,255,255,0)"
		color        : "#437A1C"
		showCancel   : false
		showBookmark : false
		height       : 40
		bottom       : 5
		left         : 5
		width        : '29%'

	'view#frontLineHeader':
		zIndex : 99
		width  : Ti.UI.FILL
		top    : 0
		left   : 0
		right  : 0
		height : 1
		backgroundColor: '#AAA'



	'view#content':
		height : Ti.UI.FILL

