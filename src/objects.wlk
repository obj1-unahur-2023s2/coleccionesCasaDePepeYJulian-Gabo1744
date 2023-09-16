object cuentaCorriente {
	var saldo = 0
	
	method saldo() = saldo
	method depositar(importe){
		saldo += importe
	}
	method extraer(importe){
		saldo -= importe
	}
}

object cuentaConGastos {
	var saldo = 0
	
	method saldo() = saldo
	method depositar(importe){
		saldo += 0.max(importe - 200)
	}
	method extraer(importe){
		if (importe <= 10000){
			saldo = saldo - 0.max(importe + 200)
		}else{
			saldo = saldo - (importe * 1.02)
		}
	}
}

object cuentaCombinada {
	var cuentaPrimaria = 30000
	var cuentaSecundaria = 2000000
	
	method saldo() = cuentaPrimaria + cuentaSecundaria
	method depositar(importe){
		cuentaPrimaria += importe
	}
	method extraer(importe){
		if (importe < cuentaPrimaria){
			cuentaPrimaria -= importe
		}else{
			cuentaSecundaria -= importe
		}
	}
}