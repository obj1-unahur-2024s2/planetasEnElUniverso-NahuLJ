class Planeta {
  const property habitantes = []
  const property construcciones = []
  
  method delegacionDiplomatica() {
    const delegacion = self.habitantesDestacados() + [self.habitanteConMasRecursos()]

    return delegacion.asSet().asList()
  }

  method agregarHabitantes(unosHabitantes){
    habitantes.addAll(unosHabitantes)
  }

  method agregarConstrucciones(unasConstrucciones){
    construcciones.addAll(unasConstrucciones)
  }

  method habitantesDestacados() = habitantes.filter({habitante => habitante.esDestacado()})

  method habitanteConMasRecursos() = habitantes.max({habitante => habitante.recursos()})

  method esValioso() = construcciones.all({construccion => construccion.valor() > 100})

  method hacerQueLaDelegacionTrabaje(unTiempo){
    self.delegacionDiplomatica().forEach({habitante => habitante.trabajarDuranteEnPlaneta(unTiempo, self)})
  }

  method invadirPlanetaYHacerTrabajarASuDelegacionDurante(unPlaneta, unTiempo){
    unPlaneta.hacerQueLaDelegacionTrabaje(unTiempo)
  }
}