import 'dart:io';

void main(List<String> arguments) {
  var lista = [];
  var contador = 0;
  var resto = 0;
  print('Introduce el numero de personas');
  int personas = int.parse(stdin.readLineSync());
  print('Introduce el numero de saltos');
  int salto = int.parse(stdin.readLineSync());
  for (var x = 1; x < personas; x++) {
    contador += salto;
    resto = contador % personas;
  }
  print('El sobreviviente es la persona número ${resto + 1}');
}
