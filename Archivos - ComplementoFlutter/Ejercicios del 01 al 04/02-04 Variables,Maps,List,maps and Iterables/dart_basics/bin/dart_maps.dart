void main(){
  //Crear un mapa
Map<String, int> notas = {'ddi':10, 'bd':8,'iot':7, 'in':10};
  print(notas);

  //Imprimir la calificacion de db
  print(notas['bd']);
  print(notas);

  notas.remove('iot');
  print(notas);

  for (var nota in notas.keys) {
    print("$nota: ${notas[nota]}");
  }

  notas.forEach((key,value)=> print('$key: $value'));


}