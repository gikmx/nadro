Data   =
	genealogy: require '/data/genealogy'

med = Data.genealogy[0]

Bundle = require '/lib/bundle'

module.exports = class extends Bundle

	title: "Genealogía"

	constructor: ->
		
		super '/bundles/tabs/genealogy'

		@$ 'window.tabbed', title: @title

		@$window.$ 'view#header'
		@$window.$header.$ 'label.header', text: @title

		@$window.$ 'view#content'

		@$window.$content.$ 'view#meds'

		@$window.$content.$meds.$ 'button'

		@$window.$content.$ 'view#comp'


		@$window.$content.$meds.$button.addEventListener 'click', (e)=>
			@$window.$content.$meds.animate
				left: 0
			@$window.$content.$comp.animate
				left: '50%'

		rowTwo = (name, value)=>
			$row  = Ti.UI.createTableViewRow selectedBackgroundColor: "#C8C8C8"
			$row.add ($view = @$ 'view.tableRow.twoLine', _ro:true)
			$view.add @$ 'label.tableRow.twoLine.bold', (_ro:true, text: name)
			$view.add @$ 'label.tableRow.twoLine.norm', (_ro:true, text: value)
			return $row

		tables = [
			(
				name   : "Medicamento"
				title  : "Medicamento"
				parent : @$window.$content.$meds
				rows   : [
					rowTwo "Nombre del medicamento:", "Celebrex"
					rowTwo "Nombre del medicamento:", "Posipen"
				]
			),
			(
				name   : "Componentes"
				title  : "Componentes"
				parent : @$window.$content.$comp
				rows   : [
					rowTwo "Proveedor Caja:", med.componentes[0].datosCompra.proveedor
					rowTwo "Proveedor Blister:", med.componentes[1].datosCompra.proveedor
					rowTwo "Comprimidos:", med.componentes[2].datosCompra.proveedor
				]
			)
		]
		for table in tables
			$tview = Ti.UI.createTableView
				width      : Ti.UI.FILL
				height     : Ti.UI.FILL
				left       : 10
				right      : 10
				top        : 10
				bottom     : 0
				style      : Ti.UI.iPhone.TableViewStyle.PLAIN
				headerView : @$ 'label.tableHeader', (_ro: true, text: table.title)
			$tview.appendRow $row for $row in table.rows
			table.parent.add $tview
			@["$table#{table.name}"] = $tview






