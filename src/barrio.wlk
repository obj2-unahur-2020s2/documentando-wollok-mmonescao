class Barrio {// Una clase

	const property elementos = [] //Lista de elementos de TDA, pueden ser instancias de clases Hogar, Mascota y Huerta y el objeto INTA

	// No devuelve nada, introduce un elemento de TDA a la lista
	method agregarElemento(elemento) { // elemento : TDA
		elementos.add(elemento)
	}

	// No devuelve nada, retira un elemento TDA de la lista siempre y cuando este en la misma. Caso contrario da error
	method sacarElemento(elemento) { // elemento : TDA
		elementos.remove(elemento)
	}

	// Retorna la cantidad de elementos buenos para el barrio de la lista
	method elementosBuenos() {
		return elementos.count{ e => e.esBueno() } // retorna tipo numerico
	}

	// Retorna la cantidad de elementos malos para el barrio de la lista 
	method elementosMalos() = elementos.count{ e => not e.esBueno() } //retorna tipo numerico

	// Retorna verdadero si la cantidad de elementos buenos de la lista es mayor que la cantidad de elementos malos de la lista
	method esCopado() {
		return self.elementosBuenos() > self.elementosMalos() // retorna tipo bool
	}

}

