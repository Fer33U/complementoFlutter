void main() {
  print("No olvides limpiar todos tus objetos y por favor no dividas entre 0");

  try {
    List<int> lista = [1, 2, 3];
    print(lista[4]);
  } on RangeError {
    print("Indice fuera de rango");
  } catch (e) {
    print("Hubo una excepcion $e");
  } finally {
    print("Operacion completada!");
  }
}
