import 'dart:math';

void main(List<String> arguments) {
  var aleatorio = new Random();
  var numero = 0;
  var lista = [];
  for (var i = 0; i < 100; i++) {
    numero = aleatorio.nextInt(1001);
    if (lista.contains(numero)) {
      i--;
    } else {
      lista.add(numero);
    }
  }
  print(lista);
  print(lista.length);
}
