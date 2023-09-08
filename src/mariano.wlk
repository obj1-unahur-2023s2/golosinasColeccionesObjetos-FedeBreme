//mariano

import golosinas.*

object mariano {
	const golosinas = []
	const golosinasQueDesea = []
	const gustos = []
	
	method comprar(unaGolosina) {
		golosinas.add(unaGolosina)
	}
	
	method desechar(unaGolosina) {
	 	golosinas.remove(unaGolosina)
	}
	 
	method cantidadDeGolosinas() = golosinas.size()
	 
    method tieneLaGolosina(unaGolosina) {//contains
	 	return golosinas.contains(unaGolosina)
	}
	 
	method probarGolosinas() {
		golosinas.forEach({g => g.recibirMordisco()})
	}
	 
	method hayGolosinaSinTACC() {
	 	return golosinas.any({g => g.libreDeGluten()})
	}
	 
	method preciosCuidados() {//all
	 	return golosinas.all({g => g.precio() <= 10})
	}
	 
	method golosinaDeSabor(unSabor) {//find
	 	return golosinas.find(unSabor)
	}
	 
	method golosinasDeSabor(unSabor) {//filter
	 	return golosinas.filter(unSabor)
	}
	 
	method sabores() = golosinas.map({g => g.gusto()}).asSet()
	 
	method golosinaMasCara() {//max del percio (les podemos aplicar transformaciones a los max y min)
	 	golosinas.find({g => g.precio()})
	}
	 
	method pesoGolosinas() {//
	 	golosinas.forEach({g => g.peso()}).sum()
	}
	
	method golosinasFaltantes(golosinasDeseadas) {
		golosinasQueDesea.filter()//preguntar
	}
	
	method gustosFaltantes(gustosDeseados) {
		gustos.filter()//preguntar
	}
}