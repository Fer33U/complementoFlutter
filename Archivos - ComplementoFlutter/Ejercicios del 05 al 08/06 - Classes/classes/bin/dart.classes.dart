class Animal {
  String _nombre = "Sin nombre";
  int _edad = 0;

/*
  //Constructor
  Animal() {
    print("Constructor llamado");
  }
  */

  //Constructor con parametros
  Animal({String nombre = 'Anonimo', int edad = 0}) {
    print('Constructor llamado');
    _nombre = nombre;
    _edad = edad;
  }

  void comer() {
    print("Comiendo!");
  }

  void cambiarEstado(String nombre, int edad) {
    _nombre = nombre;
    _edad = edad;
  }

  void imprimir() {
    print("Animal: $_nombre \nEdad: $_edad");
  }
}

void main() {
  var a = Animal();
  print(a._nombre);
  print(a._edad);

  a._nombre = "Leon";
  a._edad = 10;
  a.imprimir();
  a.comer();

  int x = 0;
  print(x is Animal);

  a.cambiarEstado("Gatito", 0);
  a.imprimir();

  var a2 = Animal(nombre: "Pantera", edad: 3);
  a2.imprimir();
}