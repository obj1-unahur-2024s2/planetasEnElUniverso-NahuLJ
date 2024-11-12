class Persona {
  var recursos = 20
  var edad 

  method recursos() = recursos

  method initialize(){
    recursos = 20
  }
  
  method esDestacado() = edad.between(18, 65) or recursos > 30

  method ganarDeRecursosCantidad(unaCantidad){
    recursos += unaCantidad
  }

  method gastarDeRecursosCantidad(unaCantidad){
    recursos = 0.max(recursos - unaCantidad)
  }

  method cumplirAnios(){
    edad += 1
  }
}

