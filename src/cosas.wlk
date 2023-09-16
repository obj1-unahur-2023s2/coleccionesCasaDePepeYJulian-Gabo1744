
object heladera {
	method precio() { return 200000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 80000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 3500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 12000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object milanesaRebozada {
	var kilo = 1	
	
	method kilo(cantDeKilo){
		kilo = cantDeKilo
	}
	method precio() { return 2600 * kilo }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object botellaDeSalsaDeTomate {
	method precio() { return 900 }
	method esComida() { return true }
	method esElectrodomestico() { return false }
}

object microondas {
	method precio() { return 42000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }
}

object cebolla {
	var kilo = 1
	
	method kilo(cantDeKilo){
		kilo = cantDeKilo
	}
	method precio() { return 250 * kilo }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object compu {
	
	method precio() { return 500 * dolar.precioDeVenta() }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object packDeComida {
	var property plato = null
	var property aderezo = null
	
	
	method precio() { return plato.precio() + aderezo.precio() }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object dolar {
	
	method precioDeVenta() = 642
}