import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  var aleatorio = new Random();
  var numero = 0;
  var lista = [];
  var listaMayores = [];
  for (var i = 0; i < 50; i++) {
    numero = aleatorio.nextInt(100);
    lista.add(numero);
  }
  var digito = 0;
  print('Introduce un numero del 0 al 99');
  digito = int.parse(stdin.readLineSync());
  if ((digito < 0) | (digito > 99)) {
    print('Numero no valido');
  } else {
    for (var f = 0; f < lista.length; f++) {
      if (lista[f] > digito) {
        listaMayores.add(lista[f]);
      }
    }
  }
  print(listaMayores);
}
