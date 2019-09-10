object registroProduccion {
	var produccionPorDia = [53,18,49,62,33,39]	
	
	method cambiarProduccionPorDia(nuevaLista) {
		produccionPorDia = nuevaLista

	}
//esto no es lo mejor pero sirve para practicar any	
	method algunDiaSeProdujo(cantidad){
		produccionPorDia.any({pd => pd == cantidad})
		
		
	}
	method algunDiaSeProdrujo_ok(cantidad){
		return produccionPorDia.contains(cantidad)
	}
	
	method maximoValorDeProduccion(){
		return produccionPorDia.max()
		
	}

	method valoresDeProduccionPares(){
		return produccionPorDia.filter({numero => numero.even()  })
	}
	
	method produccionEsAcotada(n1,n2){
		return produccionPorDia.all({numero => numero.between(n1,n2) })
		
	}
	method produccionesSuperioresA(cuanto){
		return produccionPorDia.filter({numero => numero > cuanto })
		
	}
	method produccionesSumando(n){
		return produccionPorDia.map({pd => pd + n})
		
	}
	
	method totalProducido(){
		return produccionPorDia.sum()
	}
	method ultimoValorDeProduccion(){
		return produccionPorDia.last()
	}
	method cantidadProduccionesMayorALaPrimera(){
		return produccionPorDia.count({pd => pd > produccionPorDia.first()})
	}
}

