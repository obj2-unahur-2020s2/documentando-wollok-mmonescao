class Hogar {// Una clase

	var property nivelMugre // Atributo tipo numerico
	var property confort // Atributo tipo numerico

	// Se considera que un hogar _es bueno_ 
	// si su nivel de mugre es la mitad del confort que ofrece, o menos.
	
	// Retorna verdadero si su nivel de mugre es la mitad del confort que ofrece, o menos. Falso en caso contrario
	method esBueno() = nivelMugre <= confort / 2 //retorna tipo bool

	// No devuelve nada, actualiza el valor del nivel de mugre despues de ser atacado por una plaga
	method fueAtacado(plaga) {// plaga : TDA
		nivelMugre += plaga.nivelDanio()
	}

}

class Mascota {// Una clase

	var property nivelSalud // Atributo tipo numerico

	// No devuelve nada, actualiza el valor del nivel de salud despues de ser atacado por una plaga solo si esta transmite enfermedades
	method fueAtacado(plaga) { // plaga : TDA
		if (plaga.transmiteEnfermedad()) {
			nivelSalud -= plaga.nivelDanio()
		}
	}

	// Retorna verdadero si el nivel de salud es mayor a 250. Falso en caso contrario
	method esBueno() = nivelSalud > 250 //retorna tipo numerico

}

class Huerta {

	var property capacidadProduccion // Atributo tipo numerico

	// Retorna verdadero si la capacidad de produccion es mayor a la produccion minima del obeto INTA. Falso en caso contrario
	method esBueno() {
		return capacidadProduccion > INTA.produccionMinima() // retorna tipo bool
	}

	// No devuelve nada, reduce el valor de la cantidad de produccion un 10% del nivel de daño de una plaga, si esta ultima transmite enfermedades, ademas 
	// resta otros 10 enteros
	method fueAtacado(plaga) { // plaga : TDA
		capacidadProduccion -= plaga.nivelDanio() * 0.1
		if (plaga.transmiteEnfermedad()) {
			capacidadProduccion -= 10
		}
	}

}

object INTA {//Un Objeto

	var property produccionMinima // Atributo tipo numerico

}

