object paquete {

  var estaPago = true 

  method estaPago(_estaPago){
	estaPago = _estaPago
  }

  method estaPago() = estaPago 
  
  method puedeSerEntregado(mensajero,destino){
	mensajero.puedeLlevar(destino)
  } 
}

object chukNorris {

  const peso = 900

  method puedeLlamar() = true

  method puedeLlevar(destino) = destino.dejaPasar(self) 

  method peso() = peso
}

object neo {

  const peso = 0
  var tieneCredito = true

  method tieneCredito(_credito) {
	tieneCredito = _credito
  }

  method peso() = peso

  method tieneCredito() = tieneCredito 

  method puedeLlamar() = tieneCredito
  
  method puedeLlevar(destino) = destino.dejaPasar(self)
}


object lincolnHawk {

  var pesoBase = 0
  var transporte = camion
  const puedeLlamar = false

  method puedeLlamar()=puedeLlamar

  method transporte(_transporte) {
	transporte = _transporte
  }
  
  method peso(_peso) {
	pesoBase = _peso
  }

  method peso() = pesoBase + transporte.peso()
  
  method puedeLlevar(destino) = destino.dejaPasar(self)

}


object bicicleta {
  const peso = 10

  method peso() = peso 

}

object camion {

   const peso = 500
   var acoplado = 0

   method peso() = peso + self.pesoAcoplado()

   method pesoAcoplado() = 500 * acoplado 

   method acoplado(_acoplados){
	acoplado = _acoplados
   }

}

object  puenteDeBrooklyn {
  
  method dejaPasar(mensajero) {
	mensajero.peso() == 1000 
  }
}

object matrix {

  method dejaPasar(mensajero)=mensajero.puedeLlamar()
 
}
