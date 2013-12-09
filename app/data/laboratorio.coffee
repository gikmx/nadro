module.exports = [
	(
		id           : "PF000000001234567890"
		descripcion  : "Celebrex"
		presentacion : "Caja con 2 cápsulas de 200mg"
		precio       : "400"
		formula      : "Celecoxib 200mg"

		materiaPrima :
			nombre    : "Celecoxib"
			dosis     : "200mg"
			proveedor : "Farmacos de la Nación SA de CV"
			lote      : "L23565" 

		lote :
			id        : "BK12CCEK063" 
			caducidad : new Date(2015, 2)
			cedi      : "CAD Toluca" 

			fabrica :
				fecha  : new Date(2013, 2) 
				nombre : "Pfizer"
				planta : "Pfizer Toluca"

			cliente :
				nombre : "NADRO"
				pedido : "SO1000569"

			serie :[
				(id: "PF000000001234567890", geo: (lat: "19.18068849", lon:"-99.03460285")),
				(id: "PF000000001111112468", geo: (lat: "19.31391486", lon:"-99.14336548")),
				(id: "PF000000001234567891", geo: (lat: "19.23023707", lon:"-99.08508838")),
				(id: "PF000000001111112469", geo: (lat: "19.23776789", lon:"-99.17496695")),
				(id: "PF000000001234567892", geo: (lat: "19.11281088", lon:"-99.21211724")),
				(id: "PF000000001111112470", geo: (lat: "19.23111265", lon:"-98.99609304")),
				(id: "PF000000001234567893", geo: (lat: "19.15778688", lon:"-98.99895261")),
				(id: "PF000000001111112471", geo: (lat: "19.16593710", lon:"-99.15123208")),
				(id: "PF000000001234567894", geo: (lat: "19.28369524", lon:"-98.94754894")),
			]

		eventos :[
			(
				fecha   : new Date(2013, 2, 15)
				reporte : "Producto Terminado en Planta Pfizer Toluca"
				geo     : (lat: "19.289866", lon: "-99.625432")
			),(
				fecha   : new Date(2013, 2, 15)
				reporte : "Entrada a Almacén CAD Toluca"
				geo     : (lat: "19.291874", lon: "-99.622339")
			),(
				fecha   : new Date(2013, 2, 18)
				reporte : "Embarque CAD Toluca"
				geo     : (lat: "19.291874", lon: "-99.622339")
			),(
				fecha   : new Date(2013, 2, 20)
				reporte : "Salida de Almacén CAD Toluca"
				geo     : (lat: "19.291874", lon: "-99.622339")
			),(
				fecha   : new Date(2013, 2, 21)
				reporte : "Reparto CAD Toluca"
				geo     : (lat: "19.291874", lon: "-99.622339")
			),(
				fecha   : new Date(2013, 3, 1)
				reporte : "Entrega del farmaco en el CEDIS NADRO Morelia"
				geo     : (lat: "19.291165", lon: "-99.623975")
			)
		]
	),
	(
		id            : "SF000000001111112468"
		descripcion   : "Posipen"
		presentacion  : "Caja con 4 cápsulas de 500mg"
		precioPublico : "240"
		formula       : "Dicloxacilina sódica monohidratada 500mg"

		materiaPrima :
			nombre    : "Dicloxacilina sódica monohidratada"
			dosis     : "500mg"
			proveedor : "Farmacos Mx SA de CV"
			lote      : "LX5678" 

		lote :
			id        : "012FN105B" 
			caducidad : new Date(2014, 5)
			cedi      : "Grimann Naucalpan" 

			fabrica :
				fecha  : new Date(2012, 4) 
				nombre : "Sanfer"
				planta : "Grimann Lerma"

			cliente :
				nombre : "NADRO"
				pedido : "SO1000569"

			serie :[
				(id: "SF000000001111112468", geo: (lat: "19.12431044", lon:"-99.05111243")),
				(id: "SF000000001111112469", geo: (lat: "19.19782246", lon:"-99.22417265")),
				(id: "SF000000001111112470", geo: (lat: "19.19272731", lon:"-99.13749536")),
				(id: "SF000000001111112471", geo: (lat: "19.33997262", lon:"-99.03987658")),
				(id: "SF000000001111112472", geo: (lat: "19.29083754", lon:"-99.07767834")),
				(id: "SF000000001111112473", geo: (lat: "19.35413019", lon:"-99.19364301")),
				(id: "SF000000001111112474", geo: (lat: "19.38944231", lon:"-99.07729870")),
				(id: "SF000000001111112475", geo: (lat: "19.28147895", lon:"-99.03132553")),
				(id: "SF000000001111112476", geo: (lat: "19.34670156", lon:"-99.06900244")),
			]

		eventos :[
			(
				fecha   : new Date(2012, 4, 20)
				reporte : "Producto Terminado en Planta Sanfer - Grimann Lerma"
				geo     : (loc: "19.481876", lon: "-99.2349850")
			),(
				fecha   : new Date(2012, 4, 22)
				reporte : "Entrada a Almacén CEDIS Sanfer - Grimann Naucalpan"
				geo     : (loc: "19.480940", lon: "-99.2340410")
			),(
				fecha   : new Date(2012, 4, 25)
				reporte : "Embarque CEDIS Sanfer - Grimann Naucalpan"
				geo     : (loc: "19.480940", lon: "-99.2340410")
			),(
				fecha   : new Date(2012, 4, 30)
				reporte : "Salida de Almacén CEDIS Sanfer - Grimann Naucalpan"
				geo     : (loc: "19.480940", lon: "-99.2340410")
			),(
				fecha   : new Date(2012, 5, 10)
				reporte : "Reparto CEDIS Sanfer - Grimann Naucalpan"
				geo     : (loc: "19.480940", lon: "-99.2340410")
			),(
				fecha   : new Date(2012, 5, 15)
				reporte : "Entrega del farmaco en el CEDIS NADRO México Sur"
				geo     : (loc: "19.687395", lon: "-100.550727")
			)
		]
	),
]




