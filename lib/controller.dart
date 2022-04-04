import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  ControllerBase() {
    autorun((_) {
      print(email);
      print(senha);
    });
  }

  @observable
  String email = "";

  @observable
  String senha = "";

  @computed
  String get emailSenha => "$email - $senha";

  @computed
  bool get formularioValidado => email.length >= 5 && senha.length >= 5;

  @action
  void setEmail(String email) => this.email = email;

  @action
  void setSenha(String senha) => this.senha = senha;
}
