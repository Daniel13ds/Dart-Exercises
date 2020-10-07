import 'dart:io';

void main(List<String> arguments) {
  print('Por favor, escribe una frase:');
  var frase = stdin.readLineSync();
  var repetidas = <String, int>{};

  //Inicializo el mapa a 0.
  for (var i = 0; i < frase.length; i++) {
    repetidas[frase[i]] = 0;
  }

  for (var i = 0; i < frase.length; i++) {
    repetidas[frase[i]]++;
  }
  print(repetidas);
}
