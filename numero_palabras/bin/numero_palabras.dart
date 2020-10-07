import 'dart:io';

void main(List<String> arguments) {
  print('Por favor, escribe una frase:');
  var parrafo = stdin.readLineSync();
  //No se tiene en cuenta frases o palabras con puntos o espacios repetidos.
  print(parrafo.split('.').length);
  print(parrafo.split(' ').length);
}
