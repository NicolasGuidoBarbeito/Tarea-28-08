object vonLukaz {
	var energia = 150
	var diversion = 70
	const remera = "blanca"
	const edad = 17
	
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
}
object bianker {
	var energia = 140
	var diversion = 80
	const remera = "negra"
	const edad = 22
	
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
}	
object gonzen {
	var energia = 90
	var diversion = 15
	const remera = "negra"
	const edad = 33
	
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
}
object rochensen {
	method dejarPasar(unaPersona){	
	return unaPersona.edad() > 21
	}
}
object rodrigsen {
	method dejarPasar(unaPersona){
		return unaPersona.remera() == "negra"
	}
}
object gushtavotruccensen {
	method dejarPasar(unaPersona){
		return false
	}
}	

object mainRoom {
	method hacerBailarA (unaPersona) {
		unaPersona.bailar(40,30)
	}
}

object dixon {
	method hacerBailarA (unaPersona) {
		unaPersona.bailar(60,120)
}
}
object marcelDettmann {
	method hacerBailarA (unaPersona) {
		unaPersona.bailar(unaPersona.energia(),1000)
}
}
object tommyMunoz {
	method hacerBailarA (unaPersona) {
		unaPersona.bailar(80,0)
}
}