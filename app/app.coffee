tabGroup = Titanium.UI.createTabGroup()

dashboardWin = Titanium.UI.createWindow
	title           : "Login"
	backgroundColor : "blue"

#Contenedor para toda la UI
container = Ti.UI.createView
	top             : 0
	left            : 0
	width           : '100%'
	height          : '100%'
	backgroundColor : 'grey'
	layout          : 'horizontal'


#Creacion de UI

## search bar
searchContainer = Ti.UI.createView
	width           : '100%'
	height          : 60
	backgroundColor : 'orange'
	top             : 0
	left            : 0

container.add(searchContainer)

searchSubcontainer = Ti.UI.createView
	width           : Ti.UI.SIZE
	height          : '100%'
	backgroundColor : 'white'
	layout          : 'horizontal'

searchContainer.add(searchSubcontainer)

searchLabel = Ti.UI.createLabel
	color     : '#0000ff'
	text      : 'Buscar lote'
	textAlign : Ti.UI.TEXT_ALIGNMENT_CENTER

searchSubcontainer.add(searchLabel)

searchInput = Ti.UI.createTextField
	borderStyle : Ti.UI.INPUT_BORDERSTYLE_ROUNDED
	color       : '#336699'
	width       : 250
	height      : 60

searchSubcontainer.add(searchInput)

## general
generalContainer = Ti.UI.createView
	layout          : 'vertical'
	height          : '100%'
	width           : '30%'
	backgroundColor : 'yellow'

container.add(generalContainer)


## med container
medContainer = Ti.UI.createView
	height          : '50%'
	backgroundColor : 'purple'
	left            : 0

generalContainer.add(medContainer)

medTable = Ti.UI.createTableView
	height : Ti.UI.SIZE
	top:0

medData = []

row = Titanium.UI.createTableViewRow
	selectedColor : 'red'

rowContainer = Ti.UI.createView
	height : 30
	width  : '100%'
	backgroundColor : 'magenta'

row.add(rowContainer)

medData.push(row)

medTable.setData(medData)

medContainer.add(medTable)

materialContainer = Ti.UI.createView
	height          : '50%'
	width           : '100%'
	backgroundColor : 'red'

generalContainer.add(materialContainer)

batchContainer = Ti.UI.createView
	height          : '100%'
	width           : '40%'
	backgroundColor : 'black'

container.add(batchContainer)

## eventos
eventContainer = Ti.UI.createView
	height          : '100%'
	width           : '30%'
	backgroundColor : 'green'

container.add(eventContainer)


#Creacion de tabs
dashboardTab = Titanium.UI.createTab
	icon   : "dashboard.png"
	title  : "Dashboard"
	window : dashboardWin


laboratoryWindow = Titanium.UI.createWindow
	title : "Genealogía"
	url   : "lab.js"

laboratoryTab = Titanium.UI.createTab
	icon   : "genialogia.png"
	title  : "Genealogia"
	window : laboratoryWindow

dashboardWin.open()

#Contenedor para login

loginContainer = Titanium.UI.createView
	backgroundColor : "green"
	width           : 200
	height          : 200

dashboardWin.add(loginContainer)

tabGroup.addTab dashboardTab
tabGroup.addTab laboratoryTab

loginContainer.addEventListener "click", (e) ->
	dashboardWin.title = "Dashboard"
	dashboardWin.remove(loginContainer)
	dashboardWin.add(container)
	tabGroup.open()
