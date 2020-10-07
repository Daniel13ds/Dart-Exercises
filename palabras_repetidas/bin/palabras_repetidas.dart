import 'dart:io';

void main(List<String> args) {
  print('Escribe una frase');
  var frase = stdin.readLineSync();
  var repetidas = <String, int>{};
  var palabras = frase.split(' ');
  print(palabras);

  for (var i = 0; i < palabras.length; i++) {
    repetidas[palabras[i]] = 0;
  }
  for (var i = 0; i < palabras.length; i++) {
    repetidas[palabras[i]]++;
  }
  print(repetidas);
}
