Data   =
	laboratorio: require '/data/laboratorio'

Bundle = require '/lib/bundle'

module.exports = class extends Bundle

	title: "Principal"

	constructor: ->

		super '/bundles/tabs/dashboard'

		@$ 'window.tabbed', title: @title

		@$window.$ 'view#header'

		@$window.$header.$ 'searchBar.header'
		@$window.$header.$ 'label.header', text: @title

		@$window.$ 'view#content'

		@$window.$content.$ 'view#back'
		
		@$window.$content.$ 'view#frontLineHeader'
		@$window.$content.$ 'view#frontLineLeft'
		@$window.$content.$ 'view#frontLineRight'
		@$window.$content.$ 'view#frontLineMiddle'

		@$window.$content.$back.$ 'view.left', layout:'vertical'
		@$window.$content.$back.$ 'view.center'
		@$window.$content.$back.$ 'view.right'
		
		@$window.$content.$back.$view[0].$ 'view.halftop'
		@$window.$content.$back.$view[0].$ 'view.halftop'



	onSearch: (callback)->
		@$window.$header.$searchBar.addEventListener 'return', (e)=>
			callback.call @, e

	search: (source)->

		source.blur()

		if source.value.match /1111/g
			lab = Data.laboratorio[1]
		else if source.value.match /1234/g
			lab = Data.laboratorio[0]
		else
			return (@$ 'alertDialog',
				_ro     : true
				message : "El medicamento no existe."
				title   : "Lo sentimos,"
				ok      : "OK"
			).show()

		$table = Ti.UI.createTableView
			width      : Ti.UI.FILL
			left       : 10
			right      : 10
			top        : 10
			bottom     : 10
			headerView : @$ 'label.tableHeader', (_ro: true, text: "Medicamento")

		fields = [
			(name: "No. de Serie"      , value: lab.id )
			(name: "Descripción"       , value: lab.descripcion)
			(name: "Presentación"      , value: lab.presentacion)
			(name: "Precio al púlblico", value: parseFloat(lab.precio).toFixed(2))
			(name: "Fórmula"           , value: lab.formula)
		]
		for field in fields
			$row  = Ti.UI.createTableViewRow
				selectedBackgroundColor: "#C8C8C8"
			$view =  @$ 'view.tableRow', (_ro:true)

			$view.add @$ 'label.tableRow.bold', (_ro:true, text: field.name)
			$view.add @$ 'label.tableRow.norm', (_ro:true, text: field.value)

			$row.add $view
			$table.appendRow $row

		@$window.$content.$back.$view[0].$view[0].add @$window.$content.$back.$tableView1 = $table

		$table1 = Ti.UI.createTableView
			width      : Ti.UI.FILL
			left       : 10
			right      : 10
			top        : 10
			bottom     : 10
			headerView : @$ 'label.tableHeader', (_ro: true, text: "Substancia Activa")


		fields = [
			(name: "Materia Prima", value: lab.materiaPrima.nombre )
			(name: "Dosis"        , value: lab.materiaPrima.dosis)
			(name: "Proveedor"    , value: lab.materiaPrima.proveedor)
			(name: "Lote"         , value: lab.materiaPrima.lote)
		]
		for field in fields
			$row  = Ti.UI.createTableViewRow
				selectedBackgroundColor: "#C8C8C8"
			$view =  @$ 'view.tableRow', (_ro:true)

			$view.add @$ 'label.tableRow.bold', (_ro:true, text: field.name)
			$view.add @$ 'label.tableRow.norm', (_ro:true, text: field.value)

			$row.add $view
			$table.appendRow $row

		@$window.$content.$back.$view[0].$view[1].add @$window.$content.$back.$tableView2 = $table1

		# $table = Ti.UI.createTableView
		# 	width      : Ti.UI.FILL
		# 	left       : 10
		# 	right      : 10
		# 	top        : 10
		# 	bottom     : 10
		# 	headerView : @$ 'label.tableHeader', (_ro: true, text: "Lote")


		# fields = [
		# 	(name: "No. de Lote"         , value: lab.lote.id )
		# 	(name: "Fecha de Caducidad"  , value: lab.lote.caducidad)
		# 	(name: "CEDI"                , value: lab.lote.cedi)
		# 	(name: "Fecha de Fabricación", value: lab.lote.fabrica.fecha)
		# 	(name: "Fabricante"          , value: lab.lote.fabrica.nombre)
		# 	(name: "Planta"              , value: lab.lote.fabrica.planta)
		# 	(name: "Cliente"             , value: lab.lote.cliente.nombre)
		# 	(name: "Pedido"              , value: lab.lote.cliente.pedido)
		# ]
		
		# for field in fields
		# 	$row  = Ti.UI.createTableViewRow
		# 		selectedBackgroundColor: "#C8C8C8"
		# 	$view =  @$ 'view.tableRow', (_ro:true)

		# 	$view.add @$ 'label.tableRow.bold', (_ro:true, text: field.name)
		# 	$view.add @$ 'label.tableRow.norm', (_ro:true, text: field.value)

		# 	$row.add $view
		# 	$table.appendRow $row

		# @$window.$content.$back.$view[0].$view[1].add @$window.$content.$back.$center.$tableView3 = $table
