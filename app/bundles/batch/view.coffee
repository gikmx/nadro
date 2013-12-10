Data   =
	laboratorio: require '/data/laboratorio'

Bundle = require '/lib/bundle'

module.exports = class extends Bundle

	title: "Lotes"

	constructor: ->

		super '/bundles/batch'

		@$ 'window.tabbed', title: @title

		@$window.$ 'view#header'

		@$window.$header.$ 'searchBar.header'
		@$window.$header.$ 'label.header', text: @title

		@$window.$ 'view#content'

		@$window.$content.$ 'view#back'
		
		@$window.$content.$ 'view#frontLineHeader'
		@$window.$content.$ 'view#frontLineLeft'
		@$window.$content.$ 'view#frontLineRight'
		@$window.$content.$ 'view#frontLineMiddleRight'

		@$window.$content.$back.$ 'view#left'
		@$window.$content.$back.$ 'view#center'
		@$window.$content.$back.$ 'view#right'
	
		@$window.$content.$back.$left.$ 'view#leftUp'
		@$window.$content.$back.$left.$ 'view#leftDw'

		@$window.$content.$back.$center.$ 'view#centerUp'
		@$window.$content.$back.$center.$ 'view#centerDw'

		@$window.$content.$back.$right.$ 'view#rightUp'
		@$window.$content.$back.$right.$ 'view#rightDw'


	onSearch: (callback)->
		args = Array::slice.call arguments
		value = if args.length and typeof args[0] is 'string' then args.shift() else false

		if not value
			@$window.$header.$searchBar.addEventListener 'return', (e)=>
				args.shift().call @, e
		else
			@$window.$header.$searchBar.value = value
			@search @$window.$header.$searchBar
			args.shift().call @, source: @$window.$header.$searchBar

	search: (source)->

		source.blur()

		if source.value.match /[\d]*111[\d]*/g
			lab = Data.laboratorio[1]
		else if source.value.match /[\d]*123[\d]*/g
			lab = Data.laboratorio[0]
		else
			$dialog = @$ 'alertDialog',
				_ro     : true
				message : "El medicamento no existe."
				title   : "Lo sentimos,"
				ok      : "OK"
			$dialog.show()
			return 

		rowOne = (name, value)=>
			$row = Ti.UI.createTableViewRow
				selectedBackgroundColor: "#C8C8C8"
			$row.add ($view = @$ 'view.tableRow.oneLine', (_ro:true))
			$view.add @$ 'label.tableRow.oneLine.bold', (_ro:true, text: name)
			$view.add @$ 'label.tableRow.oneLine.norm', (_ro:true, text: value)
			return $row


		rowTwo = (name, value)=>
			$row  = Ti.UI.createTableViewRow selectedBackgroundColor: "#C8C8C8"
			$row.add ($view = @$ 'view.tableRow.twoLine', _ro:true)
			$view.add @$ 'label.tableRow.twoLine.bold', (_ro:true, text: name)
			$view.add @$ 'label.tableRow.twoLine.norm', (_ro:true, text: value)
			return $row

		rowTri = (date, desc)=>
			$row  = Ti.UI.createTableViewRow selectedBackgroundColor: "#C8C8C8"
			$row.add ($view1 = @$ 'view.tableRow.triLine'   , (_ro:true))
			$view1.add @$ 'label.tableRow.triLine.norm'     , (_ro:true, text: desc)
			$view1.add ($view2 = @$ 'view.tableRow.oneLine' , (_ro:true))
			$view2.add @$ 'imageView.tableRow.triLine'      , (_ro:true)
			$view2.add @$ 'label.tableRow.oneLine.bold'     , (_ro:true, text: date)
			return $row

		rowQtr = (tipo, alerta)=>
			$row  = Ti.UI.createTableViewRow
				layout: 'vertical'
				selectedBackgroundColor: "#C8C8C8"

			Tipo = tipo[0].toUpperCase() + tipo.slice(1)

			$row.add ($view1 = @$ 'view.tableRow.oneLine' , (_ro:true, bottom:0))
			$view1.add @$ "imageView.tableRow.#{tipo}"    , (_ro:true)
			$view1.add @$ 'label.tableRow.oneLine.bold'   , (_ro:true, text: Tipo)


			$row.add ($view2 = @$ 'view.tableRow.triLine' , (_ro:true, bottom: 10))
			$view2.add @$ 'label.tableRow.triLine.norm'     , (_ro:true, text: alerta)

			return $row

		tables = [
			(
				name   : "Medicamento"
				title  : "Medicamento"
				parent : @$window.$content.$back.$left.$leftUp
				rows   : [
					rowTwo "No. de Serie:", lab.id          
					rowTwo "Descripción:", lab.descripcion 
					rowTwo "Presentación:", lab.presentacion
					rowTwo "Precio al público:", lab.precio      
					rowTwo "Fórmula:", lab.formula     
				]
			),(
				name   : "Substancia"
				title  : "Substancia Activa"
				parent : @$window.$content.$back.$left.$leftDw
				rows   : [
					rowTwo "Materia Prima:",  lab.materiaPrima.nombre
					rowTwo "Dósis:",  lab.materiaPrima.dosis
					rowTwo "Proveedor:",  lab.materiaPrima.proveedor
					rowTwo "Lote:",  lab.materiaPrima.lote
				]
			),(
				name   : "Lote"
				title  : "Lote"
				parent : @$window.$content.$back.$center.$centerUp
				rows   : [
					rowTwo "No. de Lote:", lab.lote.id
					rowTwo "Fecha de Caducidad:", lab.lote.caducidad
					rowTwo "CEDI:", lab.lote.cedi
					rowTwo "Fecha de Fabricación:", lab.lote.fabrica.fecha
					rowTwo "Fabricante:", lab.lote.fabrica.nombre
					rowTwo "Planta:", lab.lote.fabrica.planta
					rowTwo "Cliente:", lab.lote.cliente.nombre
					rowTwo "Pedido:", lab.lote.cliente.pedido
				]
			),(
				name   : "Serie"
				title  : "Serie"
				parent : @$window.$content.$back.$center.$centerDw
				rows   : lab.lote.serie.map (e)-> rowOne("id:", e.id)
			),(
				name   : "Alertas"
				title  : "Alertas"
				parent : @$window.$content.$back.$right.$rightDw
				rows   : lab.alertas.map (e)-> rowQtr(e.tipo, e.alerta)
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

	onOpen: (callback)->
		@$window.addEventListener 'open', (e)=> callback.call @, e
		@$window.open animated: true
