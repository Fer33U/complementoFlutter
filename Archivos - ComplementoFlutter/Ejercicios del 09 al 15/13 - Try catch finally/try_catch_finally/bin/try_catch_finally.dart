void main(){
  try{
    int resultado = 10 ~/ 0;
    print("La division es $resultado");
  }on IntegerDivisionByZeroException{
    print("Se produjo una excepcion de divicion entre 0");
  }finally{
    print("No olvides limpiar todos tus objetos y por favor no dividas entre 0");
  }
}