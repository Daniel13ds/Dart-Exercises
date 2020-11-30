import 'dart:io';

void main(List<String> arguments) {
  print("Introduce la cantidad de euros que deseas cambiar a bitcoins.");
  var euro = double.parse(stdin.readLineSync());
  var bitcoin = euro * 0.000062;
  print('${euro}€ son ${bitcoin} Bitcoins');
}
