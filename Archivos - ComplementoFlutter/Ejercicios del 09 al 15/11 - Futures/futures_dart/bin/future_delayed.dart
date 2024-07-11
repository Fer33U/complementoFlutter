void main() {
  print("Inicio del programa");

  Future.delayed(
    Duration(seconds: 3), () => 'Hola después de 3 segundos!'
  ).then((resultado) => print(resultado));
  print("Fin del programa");
}
