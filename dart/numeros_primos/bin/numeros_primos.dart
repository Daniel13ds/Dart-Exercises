void main(List<String> arguments) {
  var lista = [];
  var numero = 0;
  do {
    numero++;
    if (numero % numero == 0 &&
        numero % 1 == 0 &&
        numero % 2 != 0 &&
        numero % 3 != 0 &&
        numero % 5 != 0 &&
        numero % 7 != 0 &&
        numero != 1) {
      lista.add(numero);
    } else if (numero == 2 || numero == 3 || numero == 5 || numero == 7) {
      lista.add(numero);
    }
  } while (lista.length < 100);
  print(lista);
  print(lista.length);
}
