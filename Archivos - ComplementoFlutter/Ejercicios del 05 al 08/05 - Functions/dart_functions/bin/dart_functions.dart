//import 'dart:io';

int suma(int a, int b) {
  return a + b;
}

void saludar(String nombre) {
  print("Hola $nombre");
}

//Declarar funcion con parametros opcionales
void imprimirTiket(String producto, [int cantidad = 1, int monto = 10]) {
  print("$producto, $cantidad, $monto");
}

void imprimirCorreo(String correo, {String remitente = "Anonimo"}) {
  print("$correo, $remitente");
}

var miResta = (int a, int b) => a - b;

void main(List<String> arguments) {
  /*
  int n1, n2;
  print("Teclea un numero");
  n1 = int.parse(stdin.readLineSync()!);
  print("Teclea un segundo numero");
  n2 = int.parse(stdin.readLineSync()!);
  print("La suma de $n1 + $n2 es: ${suma(n1, n2)}");

  saludar("Fernando");
  */
  imprimirTiket("Jabon ZOTE");
  imprimirTiket("Chocolate Abuelita", 3, 45);

  imprimirCorreo("estadias.edu.mx");
  imprimirCorreo("estadias.edu.mx", remitente: "Juan Perez");

  miFuncion(int a, int b) => a + b;
  print(miFuncion(53, 33));

  print(miResta(200, 199));

  var numeros = [1, 2, 3, 4];
  numeros.forEach((num) {
    print("Numero: $num");
  });
}