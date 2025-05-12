object luke{
    var vehiculo = alambiqueVeloz
    var ultimoLugarVisitado = paris
    var lugaresVisitados = [bagdad, ultimoLugarVisitado]
    method cantidadDeLugaresVisitados() = lugaresVisitados.size() 
    method recuerdoDelUltimoLugarVisitado() = ultimoLugarVisitado.recuerdo()
    method visitaUnaCiudad() {return
        self.vehiculo.restricciones() //VER SI ES CORRECTO. ES UN MENSAJE DE INDICACION QUE HACE QUE LAS RESTRICCIONES SE APLIQUEN PARA ENTRAR EN LA CIUDAD
        self.traeUnRecuerdo() 
        lugaresVisitados.recuerdo.remove.first()//sintaxis --COLECCIONES
        vehiculo.consumeCombustible()
    }
    method traeUnRecuerdo() = ultimoLugarVisitado.recuerdo()
}   


//vehiculos
object alambiqueVeloz{
    var combustible = 100
    method viaje () = self.consumeCombustible()
    method consumeCombustible () = combustible -2
    method combustible() = combustible
    method altura() = 3
    method municiones() {}
    method velocidad() = 50
}

object superChatarraEspecial {
    var combustible = 30
    method viaje () = self.consumeCombustible()
    method consumeCombustible () = combustible -1
    method combustible() = combustible
    method altura() = 5
    method municiones() = combustible -3
    method velocidad() = 55
}

object antiguallaBlindada{
    var combustible = 45
    method viaje () = self.consumeCombustible()
    method consumeCombustible () = combustible -4
    method combustible() = combustible
    method altura() = 2
    method municiones() {}
    method velocidad() = 45
}

object superConvertible{
    var convertidoEn = alambiqueVeloz
    var combustible = convertidoEn.combustible()
    method viaje () = convertidoEn.consumeCombustible()
    method consumeCombustible () = convertidoEn.consumeCombustible()
    method combustible() = combustible
    method altura() = convertidoEn.altura()
    method municiones() = convertidoEn.municiones()
    method velocidad() = convertidoEn.velocidad()
}


//ciudades
object paris{
    method recuerdo() = "llaveroTorreEiffel"
    method restricciones() = luke.vehiculo.combustible()> 1
}

object buenosAires{
    var recuerdo = "mateConYerba"
    method recuerdo() = recuerdo
    method restricciones() = luke.vehiculo.velocidad() > 50 // o con un booleano. es rapido true
}

object bagdad{
    var recuerdo = "bidonConPetroleo"
    method recuerdo() = recuerdo
    method restricciones() {}

}

object lasVegas{
    var ciudadHomenajeada = paris
    var recuerdo = ciudadHomenajeada.recuerdo()
    method recuerdo() = recuerdo
    method restricciones() = ciudadHomenajeada.restricciones()
}

//nuevoDestino
object egipto{
    method recuerdo() = "pisapapelesPiramide"
    method restricciones() = luke.vehiculo.altura() < 5
}