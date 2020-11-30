import 'dart:io';

void main(List<String> arguments) {
  var numero;
  var resultado = 1;
  print("Introduce un numero para calcular su factorial.");
  numero = int.parse(stdin.readLineSync());
  for (int i = numero; i > 1; i--) {
    resultado = resultado * i;
  }
  print(resultado);
  print(Factorial(numero));
}

Factorial(int i) {
  if (i < 1) return 1;
  return i * Factorial(i - 1);
}
