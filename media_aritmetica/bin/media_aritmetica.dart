import 'dart:io';

void main(List<String> arguments) {
  var suma = 0;
  var numero = 0;
  var listaNumeros = [];
  print('Introduce numeros (Para parar introduce el 0)');
  do {
    numero = int.parse(stdin.readLineSync());
    listaNumeros.add(numero);
  } while (numero != 0);
  for (var i = 0; i < listaNumeros.length; i++) {
    suma += listaNumeros[i];
    print(suma);
  }
  var media = suma / listaNumeros.length;
  print('La media aritmetica de los numeros ${listaNumeros} es $media');
}
