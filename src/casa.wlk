import cosas.* //obviamente, vamos a usar los objetos del archivo cosas ;-)
import objects.*

object casaDePepeYJulian {
	const cosas = []
	var cuenta 
	
	method cuenta()=cuenta
	method cuenta(nuevaCuenta){
		cuenta = nuevaCuenta
	}
	method comprar(cosa){
		cosas.add(cosa)
		self.gastar(cosa.precio())
	}
	method cantidadDeCosasCompradas() = cosas.size()
	method tieneComida() = cosas.any( {c => c.esComida()} )
	method vieneDeEquiparse(){
		return cosas.last().esElectrodomestico() or cosas.last().precio() > 50000
	}
	method esDerrochona(){
		return cosas.sum( {c => c.precio() } ) >= 90000
	}
	method compraMasCara() = cosas.max( {c => c.precio() } )
	method electrodomesticosComprados() = cosas.filter( {c => c.esElectrodomestico()} )
	method malaEpoca() = cosas.all( {c => c.esComida()} )
	method queFaltaComprar(lista){
		return lista.asSet().difference(cosas.asSet())
	}
	method faltaComida() = cosas.count( {c => c.esComida()} ) < 2
	
	method gastar(importe){
		cuenta.extraer(importe)
	}
	method dineroDisponible() = cuenta.saldo()
}