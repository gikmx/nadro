module.exports = [
	(
		id           : "PF000000001234567890"
		descripcion  : "Celebrex"
		presentacion : "Caja con 2 cápsulas de 200mg"
		precio       : 400
		formula      : "Celecoxib 200mg"


		componentes :[
			(
				nombre : "Caja"
				sustancia : null
				datosCompra:
					proveedor   : "Internacional de Cartones S.A. de C.V."
					lote        : 5567
					fechaCompra : new Date(2013, 3, 1)
					ordenCompra : "P01234"

			),(
				nombre : "blister"
				sustancia : null
				datosCompra:
					proveedor   : "Empaques Metálicos S.A de C.V."
					lote        : "BB2245"
					fechaCompra : new Date(2013, 3, 10)
					ordenCompra : "P03455"
			),(
				nombre : "comprimidos"
				sustancia : "Celecoxib"
				datosCompra :
					proveedor   : "Empaques Metálicos S.A de C.V."
					lote        : "BB2245"
					fechaCompra : new Date(2013, 3, 10)
					ordenCompra : "P03455"
			)
		]
	),
	(
		id           : "SF000000001111112468"
		descripcion  : "Posipen"
		presentacion : "Caja con 4 cápsulas de 500mg"
		precio       : 240
		formula      : "Dicloxacilina sódica monohidratada 500mg"


		componentes :[
			(
				nombre : "Caja"
				sustancia : null
				datosCompra:
					proveedor   : "Internacional de Cartones S.A. de C.V."
					lote        : 2987
					fechaCompra : new Date(2013, 4, 1)
					ordenCompra : "P6789"

			),(
				nombre : "blister"
				sustancia : null
				datosCompra:
					proveedor   : "Empaques Metálicos S.A de C.V."
					lote        : "DD3456"
					fechaCompra : new Date(2013, 3, 10)
					ordenCompra : "P101112"
			),(
				nombre : "comprimidos"
				sustancia : "Dicloxacilina sódica monohidratada"
				datosCompra :
					proveedor   : "Farmacos Mx SA de CV"
					lote        : "012FN105B"
					fechaCompra : new Date(2013, 5, 20)
					ordenCompra : "P03455"
			)
		]
	)
]