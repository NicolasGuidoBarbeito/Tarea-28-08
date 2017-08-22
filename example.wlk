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
}
object rochensen {
	method dejarPasar(unaPersona){	
	return unaPersona.edad() > 21
	}
}	