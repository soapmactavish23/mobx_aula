import 'package:mobx/mobx.dart';

class Controller {
  final _contador = Observable(0);

  Action? incrementar;

  int get contador => _contador.value;
  set contador(int value) => _contador.value = value;

  Controller() {
    incrementar = Action(_incrementar);
  }

  _incrementar() {
    contador = contador + 1;
  }
}
