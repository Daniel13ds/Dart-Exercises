import 'dart:io';

void main(List<String> arguments) {
  var numero = 0;
  var factorial = 1;
  print('Introduce un número para calcular su factorial');
  numero = int.parse(stdin.readLineSync());
  for (var i = 1; i <= numero; i++) {
    factorial *= i;
  }
  print('El factorial de $numero es $factorial');
}
