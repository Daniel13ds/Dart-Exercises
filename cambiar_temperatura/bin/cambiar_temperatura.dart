import 'dart:io';

void main(List<String> arguments) {
  double temperatura = 0;
  print('Introduce el tipo de temperatura a cambiar (C o F)');
  var tipo = stdin.readLineSync();
  if (tipo == 'C') {
    print('Introduce la temperatura en Celsius');
    temperatura = double.parse(stdin.readLineSync());
    print(
        'La temperatura en grados Fahrenheit sería ${temperatura * 1.8 + 32} grados');
  } else {
    if (tipo == 'F') {
      print('Introduce la temperatura en Fahrenheit');
      temperatura = double.parse(stdin.readLineSync());
      print(
          'La temperatura en grados Celsius sería ${(temperatura - 32) / 1.8} grados');
    } else {
      print('Solo se puede introducir C o F');
    }
  }
}
