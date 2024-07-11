void main() {
  // Future que lanza una excepción
  Future(() {
    throw Exception("Algo salio mal!");
  }).then((_) {
    print('Operacion exitosa!');
  }).catchError((e) {
    print("Error: $e");
  });
}
