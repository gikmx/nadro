TabGroup = require '/bundles/tabs/control'
tabgroup = new TabGroup()

return
dashboardWin = Ti.UI.createWindow
	title           : "Login"
	backgroundColor : "blue"

laboratoryWindow = Ti.UI.createWindow
	title : "Genealogía"
	backgroundColor : "cyan"

#Creacion de tabs
dashboardTab = Ti.UI.createTab
	icon   : "dashboard.png"
	title  : "Dashboard"
	window : dashboardWin

laboratoryTab = Ti.UI.createTab
	icon   : "genealogia.png"
	title  : "Genealogia"
	window : laboratoryWindow

tabGroup.addTab dashboardTab
tabGroup.addTab laboratoryTab

tabGroup.open()