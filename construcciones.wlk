class Muralla {
  const longitud

  method valor() = longitud * 10

}

class Museo {
  const indiceDeImportancia
  var superficieCubierta

  method initialize(){
    if(superficieCubierta > 5){
      superficieCubierta = 5
    }
    else if (superficieCubierta < 1){
      superficieCubierta = 1
    }
  }

  method valor() = indiceDeImportancia * superficieCubierta

}