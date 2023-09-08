//golosinas

object bombon {
	const precio = 5
	var peso = 15
	const gusto = "frutilla"
	const libreDeGluten = true
	
	method darMordisco() {
		peso = (peso * 0.8) - 1
	}
	
	method precio() {
		return precio
	}
	
	method peso() {
		return peso
	}
	
	method gusto() {
		return gusto
	}
	
	method libreDeGluten() {
		return libreDeGluten
	}
}

object alfajor {
	const precio = 12
	var peso = 300
	const gusto = "chocolate"
	const libreDeGluten = false
	
	method darMordisco() {
		peso = peso * 0.8
	}
	
	method precio() {
		return precio
	}
	
	method peso() {
		return peso
	}
	
	method gusto() {
		return gusto
	}
	
	method libreDeGluten() {
		return libreDeGluten
	}
}

object caramelo {
	const precio = 1
	var peso = 5
	const gusto = "frutilla"
	const libreDeGluten = true
	
	method darMordisco() {
		peso = peso - 1
	}
	
	method precio() {
		return precio
	}
	
	method peso() {
		return peso
	}
	
	method gusto() {
		return gusto
	}
	
	method libreDeGluten() {
		return libreDeGluten
	}
}

object chupetin {
	const precio = 2
	var peso = 7
	const gusto = "naranja"
	const libreDeGluten = true
	
	method darMordisco() {
		if (peso >= 2) {
			peso = peso * 0.1
		} 
	}
	
	method precio() {
		return precio
	}
	
	method peso() {
		return peso
	}
	
	method gusto() {
		return gusto
	}
	
	method libreDeGluten() {
		return libreDeGluten
	}
}

object oblea {
	const precio = 5
	var peso = 250
	const gusto = "vainilla"
	const libreDeGluten = false
	
	method darMordisco() {
		if (peso >= 70) {
			peso = peso * 0.5
		} else {
			peso = peso * 25 / 100
		}
	}
	
	method precio() {
		return precio
	}
	
	method peso() {
		return peso
	}
	
	method gusto() {
		return gusto
	}
	
	method libreDeGluten() {
		return libreDeGluten
	}
}

object chocolate {
	var precio  
	var pesoInicial
	var peso 
	const gusto = "chocolate"
	const libreDeGluten = false
	
	method pesoInicial(nuevoPeso) {
		pesoInicial = nuevoPeso
	}
	
	method darMordisco() {
		peso = peso - 2
	}
	
	method calcularPrecio() {
		precio = 0.50 * pesoInicial
	}
	
	method precio() {
		return precio 
	}
	
	method peso() {
		return pesoInicial
	}
	
	method gusto() {
		return gusto
	}
	
	method libreDeGluten() {
		return libreDeGluten
	}
}

object golosinaBaniada {
	 var golosinaDeBase
	 var peso 
	 var mordidas = 0
	 
	 method golosinaDeBase(golosina) {
	 	golosinaDeBase = golosina
	 }
	 
	 method golosinaDeBase() {
	 	return golosinaDeBase 
	 }
	 
	 method mordidas() {
	 	return mordidas
	 }
	 
	 method peso() {
	 	return golosinaDeBase.peso() + 4
	 }
	 
	 method precio() {
	 	return golosinaDeBase.precio() + 2
	 }
	 
	 method gusto() {
	 	return golosinaDeBase.gusto()
	 }
	 
	 method libreDeGluten() {
	 	return golosinaDeBase.libreDeGluten()
	 }
	 
	 method darMordisco() {
	 	if (mordidas < 2) {
	 		peso = peso - (golosinaDeBase.peso() - 2)
	 		mordidas = 1
	 	} else {
	 		peso = peso - golosinaDeBase.peso()
	 	}
	 }
}

object pastillaDeTuttiFrutti {
	const sabores = ["frutilla","chocolate","naranja"]
	var peso = 5
	var libreDeGluten = false 
	var contador = 0
	
	method peso() {
		return peso
	}
	
	method libreDeGluten(valor) {
		libreDeGluten = valor
	}
	
	method libreDeGluten() {
	 	return libreDeGluten
	 }
		
	method precio() = if (libreDeGluten) {7} else {10}
	
	method gusto() = sabores.get(contador%sabores.size())
	
	method darMordisco() {
		contador += 1
	}
}