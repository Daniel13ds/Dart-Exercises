import 'dart:io';

void main(List<String> arguments) {
  var precision = 0;
  var pi = 0.0;
  var numero = 1;
  print('Introduce el nivel de precisión');
  precision = int.parse(stdin.readLineSync());
  for (var i = 0; i < precision; i++) {
    pi += 1 / numero;
    numero += 2;
    pi -= 1 / numero;
    numero += 2;
  }
  print('El numero pi con precisión $precision es ${pi * 4}');
}
