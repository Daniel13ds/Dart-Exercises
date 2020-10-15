import 'dart:io';

import 'dart:math';

void main(List<String> arguments) {
  String getPlayerMove() {
    print('Elige Piedra, Papel o Tijeras');
    var mano = stdin.readLineSync().toLowerCase();
    return mano;
  }

  String getComputerMove() {
    var mano = '';
    var aleatorio = new Random();
    var numero = aleatorio.nextInt(3);
    if (numero == 0) {
      mano = 'piedra';
    } else if (numero == 1) {
      mano = 'papel';
    } else {
      mano = 'tijera';
    }
    return mano;
  }

  String whoWon(manoJugador, manoOrdenador) {
    if (manoJugador == manoOrdenador) {
      print('El jugador ha sacado $manoJugador');
      print('El ordenador ha sacado $manoOrdenador');
      return 'Empate';
    } else if (manoJugador == 'piedra') {
      if (manoOrdenador == 'papel') {
        print('El jugador ha sacado $manoJugador');
        print('El ordenador ha sacado $manoOrdenador');
        return 'Gana el Ordenador';
      } else {
        print('El jugador ha sacado $manoJugador');
        print('El ordenador ha sacado $manoOrdenador');
        return 'Gana el Jugador';
      }
    } else if (manoJugador == 'papel') {
      if (manoOrdenador == 'piedra') {
        print('El jugador ha sacado $manoJugador');
        print('El ordenador ha sacado $manoOrdenador');
        return 'Gana el Jugador';
      } else {
        print('El jugador ha sacado $manoJugador');
        print('El ordenador ha sacado $manoOrdenador');
        return 'Gana el Oredenador';
      }
    } else if (manoJugador == 'tijeras') {
      if (manoOrdenador == 'piedra') {
        print('El jugador ha sacado $manoJugador');
        print('El ordenador ha sacado $manoOrdenador');
        return 'Gana el Oredenador';
      } else {
        print('El jugador ha sacado $manoJugador');
        print('El ordenador ha sacado $manoOrdenador');
        return 'Gana el Jugador';
      }
    } else {
      return 'Elección no válida';
    }
  }

  var manoJugador = getPlayerMove();
  var manoOrdenador = getComputerMove();
  print(whoWon(manoJugador, manoOrdenador));
}
