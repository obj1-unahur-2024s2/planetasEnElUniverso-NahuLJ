class Muralla {
  const longitud

  method valor() = longitud * 10

}

class Museo {
  var indiceDeImportancia
  const superficieCubierta

  method initialize(){
    if(indiceDeImportancia > 5){
      indiceDeImportancia = 5
    }
    else if (indiceDeImportancia < 1){
      indiceDeImportancia = 1
    }
  }

  method valor() = superficieCubierta * indiceDeImportancia  

}