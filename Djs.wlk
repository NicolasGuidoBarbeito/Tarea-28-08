object vonLukaz {
	var energia = 150
	var diversion = 70
	const remera = "blanca"
	const edad = 17
	var club
	method energia(){
		return energia
	}
	method diversion(){
		return diversion
	}
	method remera(){
		return remera
	}
	method edad(){
		return edad
	}
	method bailar(cantidadDeEnergiaGastada, cantidadDeDiversionAumentada){
		energia = energia - cantidadDeEnergiaGastada
		diversion = diversion + cantidadDeDiversionAumentada
	}
	method esMayorDeEdad(){
		return self.edad() > 21
	}
	method tieneRemeraColor(unColor){
		return self.remera() == unColor
	}
	method irABailarA(unaPista){
		if(club.dejaEntrarA(self))
		unaPista.ingresaPersonaALaPista()
	}
}

object bianker {
	var energia = 140
	var diversion = 80
	const remera = "negra"
	const edad = 22
	var club
	method energia(){
		return energia
	}
	method diversion(){
		return diversion
	}	
	method remera(){
		return remera
	}
	method edad(){
		return edad
	}
	method bailar(cantidadDeEnergiaGastada, cantidadDeDiversionAumentada){
		energia = energia - cantidadDeEnergiaGastada
		diversion = diversion + cantidadDeDiversionAumentada
	}
	method esMayorDeEdad(){
		return self.edad() > 21
	}
	method tieneRemeraColor(unColor){
		return self.remera() == unColor
	}
	method irABailarA(unaPista){
		if(club.dejaEntrarA(self))
		unaPista.ingresaPersonaALaPista()
	}
}

object gonzen {
	var energia = 90
	var diversion = 15
	const remera = "negra"
	const edad = 33
	var club
	method energia(){
		return energia
	}
	method diversion(){
		return diversion
	}
	method remera(){
		return remera
	}
	method edad(){
		return edad
	}
	method bailar(cantidadDeEnergiaGastada, cantidadDeDiversionAumentada){
		energia = energia - cantidadDeEnergiaGastada
		diversion = diversion + cantidadDeDiversionAumentada
	}
	method esMayorDeEdad(){
		return self.edad() > 21
	}
	method tieneRemeraColor(unColor){
		return self.remera() == unColor
	}
	method irABailarA(unaPista){
		if(club.dejaEntrarA(self))
		unaPista.ingresaPersonaALaPista()
	}
}

object rochensen {
	method dejaPasarA(unaPersona){						// dejar pasar suena a algo que tiene efecto. Seria mas expresivo dejaPasarA
	return unaPersona.esMayorDeEdad()						// #72 rompés el encapsulamiento acá! la responsabilidad de saber si alguien es mayor a 21 debería ser de la persona, no del patova!					
	}													// podrias definir en las personas un metodo que sea esMayorDeEdad(), o tieneEdadMayorA(unaEdad)		
}
object rodrigsen {
	method dejaPasarA(unaPersona){
	return unaPersona.tieneRemera("negra")			// símil #72, rompés el encapsulamiento. Definí un método tieneRemeraColor(unColor) en las personas!
	}
}
object gushtavotruccensen {
	method dejaPasarA(unaPersona){
		return false
	}
}	

object mainRoom {
	var listaDePersonas = []
	var dj
	method dj (unDj){
		dj = unDj
	}
	method hacerBailarA (unaPersona) {
		unaPersona.bailar(40,30)
	}
	method ingresaPersonaALaPista (unaPersona) {
	listaDePersonas.add(unaPersona)
	}
	method todosBailanEnLaPista () {
		listaDePersonas.forEach{unaPersona => dj.hacerBailarA(unaPersona)}
	}
	method cuantasPersonasBailanEnLaPista() {
		return listaDePersonas.size()
	}
	method estaBailando(unaPersona) {
		return listaDePersonas.contains(unaPersona)
	}
	method gonzenBailaEnPista (unaPista){
		return unaPista.estaBailando(gonzen)
	}
}

object dixon {
	method haceBailarA (unaPersona) {
		unaPersona.bailar(60,120)
}

}
object marcelDettmann {
	method haceBailarA (unaPersona) {
		unaPersona.bailar(unaPersona.energia(),1000)
}
}
object tommyMunoz {
	method haceBailarA (unaPersona) {
		unaPersona.bailar(80,0)
}
}
object panoramaBar {
	var listaDePersonas	= []								// Acá podés usar polimorfismo! no definas un método distinto para cada dj!
	var dj					// podés decir que panoramaBar tiene un dj, y cuando hacés bailar a alguien que se lo delegue a su dj!
	method dj (unDj) {
		dj = unDj
	}
	method ingresaPersonaALaPista (unaPersona) {
		listaDePersonas.add(unaPersona)
	}
	method todosBailanEnLaPista () {
		listaDePersonas.forEach{unaPersona => dj.haceBailarA(unaPersona)}
	}
	method cuantasPersonasBailanEnLaPista() {
		return listaDePersonas.size()
	}
	method estaBailando(unaPersona) {
		return listaDePersonas.contains(unaPersona)
	}
	method gonzenBailaEnPista (unaPista){
		return unaPista.estaBailando(gonzen)
	}
}

object club {
	var patova
	var pista 
	method patova (unPatova){
		patova = unPatova
	}
	
	method pista (unaPista){
		pista = unaPista
	}
	
	method dejaEntrarA (unaPersona){
		return patova.dejaPasarA(unaPersona)
	}
}



/*
	Ojo a las consignas! con esto sólo estarías implementando el punto 1.! Sigue faltando:
	
	2. Hacer que una persona entre al club (en caso que el patova de turno lo deje).
	
	Para este punto vas a tener que modelar el club en sí, que va a tener un patova, y a las personas les vas a tener que agregar el metodo irABailarA(unaPista)
	
	3. Que todas las personas de una pista bailen.
	
	Acá vas a necesitar que cada pista sepa quienes estan bailando en ella. (listas)
	
	4. Saber cuántas personas están bailando en cada pista.
	
	5. Saber si Gonzen está bailando en alguna pista. 
	
	Gonzen va a tener que saber responder a si esta bailando en una pista determianda
*/