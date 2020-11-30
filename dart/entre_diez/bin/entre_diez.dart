import 'dart:io';

void main(List<String> arguments) {
  numeroEntreDiez();
}

numeroEntreDiez() {
  var numero;
  do {
    print("Introduce un numero entre 0 y 10.");
    numero = int.parse(stdin.readLineSync());
  } while (numero > 10 || numero < 0);
  print(numero);
}
