class Plaga { // Una clase
	var property poblacion // Atributo tipo numerico
	
	// Retorna verdadero si el valor de la poblacion es mayor o igual a 10. Falso en caso contrario
	method transmiteEnfermedad() = poblacion >= 10 // retorna tipo bool
	
	// No devueve nada. Incrementa el valor de la poblacion en un 10% y ataca al elemento dado
	method atacar(elemento){ // elemento : TDA
		poblacion *= 1.1
		elemento.fueAtacado(self)
	}
}

class PlagaCucaracha inherits Plaga { // Una subclase de la super-clase Plaga

	var property pesoPromedio // Atributo tipo numerico

	// Retorna el nivel de daño que es la mitad del valor de la poblacion
	method nivelDanio() {
		return poblacion / 2 // retorna tipo numerico
	}

	// Metodo reescrito de la super-clase plaga. Retorna verdadero si el valor de la poblacion es mayor o igual a 10 y si el valor
	// del peso promedio es mayor o igual a 10. Falso en caso contrario
	override method transmiteEnfermedad() {
		return super() and pesoPromedio >= 10 // retorna tipo bool
	}

	// // No devueve nada. Incrementa 2 unidades al valor de la poblacion
	override method atacar(elemento) {// elemento : TDA
		super(elemento)
		pesoPromedio += 2
	}

}

class PlagaMosquito inherits Plaga { // Una subclase de la super-clase Plaga

	// Retorna el nivel de daño que es igual al valor de la poblacion
	method nivelDanio() {
		return poblacion // retorna tipo numerico
	}

	// Metodo reescrito de la super-clase plaga. Retorna verdadero si el valor de la poblacion es mayor o igual a 10 y si el valor
	// de la poblacion es multiplo de 3. Falso en caso contrario
	override method transmiteEnfermedad() {
		return super() and poblacion % 3 == 0// retorna tipo bool
	}

}

class PlagaPulgas inherits Plaga { // Una subclase de la super-clase Plaga

	// Retorna el nivel de daño que es el doble del valor de la poblacion
	method nivelDanio() = poblacion * 2 // retorna tipo numerico

}

class PlagaGarrapatas inherits PlagaPulgas { // Una subclase de la clase PlagaPulgas

	// Metodo reescrito de la super-clase plaga. No devueve nada. Incrementa el valor de la poblacion en un 20% y ataca al elemento dado
	override method atacar(elemento) {// elemento : TDA
		poblacion *= 1.2
		elemento.fueAtado(self)
	}

}

