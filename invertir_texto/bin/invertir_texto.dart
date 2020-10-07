import 'dart:io';

void main(List<String> arguments) {
  print('Introduce una cadena de caracteres:');
  String cadena = stdin.readLineSync();
  String cadenaInvertida = "";
  for (int x = cadena.length; x != 0; x--) {
    cadenaInvertida += cadena.substring(x - 1, x);
  }
  ;

  print(cadenaInvertida);
}
