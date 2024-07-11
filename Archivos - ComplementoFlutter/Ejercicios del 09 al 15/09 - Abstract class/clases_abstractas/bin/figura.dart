//Crear una clase abstracta llamada figura
abstract class Figura{
  //Crear un metodo abstracto
  double calcularArea();

} 

//Clase Rectangulo que hereda de Figura
class Rectangulo extends Figura{
      double base, altura;
    Rectangulo(this.altura, this.base);

  @override
  double calcularArea() {
    return base * altura;
  }

}
//Crear Circilo que herede Figura

class Circulo extends Figura {
  double radio;

  Circulo(this.radio);
  
  @override
  double calcularArea() {
return 3.14*radio;
  }

}