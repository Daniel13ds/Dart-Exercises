import 'dart:io';

void main(List<String> arguments) {
  var suma = 0;
  final listaNumeros = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  for (var i = 0; i < listaNumeros.length; i++) {
    suma += listaNumeros[i];
    print(suma);
  }
  var media = suma / listaNumeros.length;
  print('La media aritmetica de los numeros ${listaNumeros} es $media');
}
