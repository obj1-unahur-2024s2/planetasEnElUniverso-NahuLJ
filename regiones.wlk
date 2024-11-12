import construcciones.*
import personas.*
object montania {

  method construccionDeTiempoDeConstructor(unTiempo,unConstructor) =
    new Muralla (longitud = unTiempo * 0.5)
}

object costa {

  method construccionDeTiempoDeConstructor(unTiempo,unConstructor) =
    new Museo (indiceDeImportancia = 1 , superficieCubierta = unTiempo)
}

object llanura {

  method construccionDeTiempoDeConstructor(unTiempo,unConstructor) =
    if(not unConstructor.esDestacado()){
      montania.construccionDeTiempoDeConstructor(unTiempo, unConstructor)
    }
    else{
      new Museo(indiceDeImportancia = (0..5).anyOne() , superficieCubierta = unTiempo)
    }
}

object aldea {

  method construccionDeTiempoDeConstructor(unTiempo,unConstructor) =
    if (unConstructor.inteligencia() > 50 ){
      new Museo(indiceDeImportancia = (0..5).anyOne() , superficieCubierta = unTiempo * 100)
    }
    else{
      new Muralla (longitud = unTiempo)
    }
}