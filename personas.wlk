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

  method trabajarDuranteEnPlaneta(unTiempo,unPlaneta){}
}

class Productor inherits Persona {
  const property tecnicas = ["cultivo"]

  override method recursos() = super() * tecnicas.size()

  override method esDestacado() = super() or tecnicas.size() > 5

  method realizarTecnicaDurante(unaTecnica,unTiempo){
    if(tecnicas.contains(unaTecnica)){
      self.ganarDeRecursosCantidad(3 * unTiempo)
    }
    else{
      self.gastarDeRecursosCantidad(1)
    }
  }

  method aprenderTecnica(unaTecnica){
    if(not tecnicas.contains(unaTecnica)){
      tecnicas.add(unaTecnica)
    }
  }

  override method trabajarDuranteEnPlaneta(unTiempo,unPlaneta){
    if(unPlaneta.habitantes().contains(self)){
      self.realizarTecnicaDurante(tecnicas.last(), unTiempo)
    }
  }
}

class Constructor inherits Persona {
  var cantConstrucciones = 0
  const regionDondeVive 
  const property inteligencia

  method cantConstrucciones() = cantConstrucciones

  method regionDondeVive() = regionDondeVive

  override method recursos() = super() + cantConstrucciones * 10

  override method esDestacado() = cantConstrucciones > 5

  override method trabajarDuranteEnPlaneta(unTiempo,unPlaneta){
    cantConstrucciones += 1
    self.gastarDeRecursosCantidad(5)
    unPlaneta.construcciones().add(
      regionDondeVive.construccionDeTiempoDeConstructor(unTiempo, self)
    )
  }

}