import 'dart:io';

void main(List<String> arguments) {
  var frase = "";
  var listaPlabras = [];
  print("Introduce una frase para separarla.");
  frase = stdin.readLineSync();
  print(frase);
  listaPlabras.add(frase.split(" "));
  print(listaPlabras);
}
