void main(){
  print("Inicio de programa");

  //Crear el future(valor o error que estara disponible en un momento futuro)
  Future((){
    return "Hola mundo";
  }).then((resultado){print(resultado);});

  print("Fin del programa");
}










