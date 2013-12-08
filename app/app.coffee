TabGroup = require '/bundles/tabs/control'
tabgroup = new TabGroup()
return
tabGroup = Ti.UI.createTabGroup()

dashboardTab = Ti.UI.createTab
	icon   : "dashboard.png"
	title  : "Dashboard"
	window : Ti.UI.createWindow
		title           : "Login"
		backgroundColor : "blue"

laboratoryTab = Ti.UI.createTab
	icon   : "genealogia.png"
	title  : "Genealogia"
	window : Ti.UI.createWindow
		title : "Genealogía"
		backgroundColor : "cyan"

tabGroup.addTab dashboardTab
tabGroup.addTab laboratoryTab

tabGroup.open()