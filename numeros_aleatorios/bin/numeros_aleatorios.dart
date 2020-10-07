import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  var adivina = new Random();
  var contador = 0;
  var aleatorio = adivina.nextInt(100);
  var numero = 0;
  print('Introduce un número para adivinar el aleatorio');

  do {
    numero = int.parse(stdin.readLineSync());
    if ((numero < 0) | (numero > 99)) {
      print('Numero no valido');
    } else {
      contador++;
      if (numero < aleatorio) {
        print('Tu número es menor al numero aleatorio, vuelve a intentarlo');
      } else {
        if (numero > aleatorio) {
          print('Tu número es mayor al numero aleatorio, vuelve a intentarlo');
        } else {
          print('Has acertado');
        }
      }
    }
  } while (numero != aleatorio);
  print('Has tardado $contador intentos');
}
