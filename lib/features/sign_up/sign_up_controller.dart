import 'dart:developer' as developer;
import 'package:financy_app/features/sign_up/sign_up_state.dart';
import 'package:flutter/foundation.dart';

class SignUpController extends ChangeNotifier {
  SignUpState _state = SignUpInitialState();

  SignUpState get state => _state;

  void _changeState(SignUpState newState) {
    _state = newState;
    //Após o estado da aplicação ser modificado, abaixo estaremos notificando que a modificação ocorreu.
    notifyListeners();
  }

  Future<bool> doSignUp() async {
    //Aqui eu chamei a função e ai tem que atualizar o status da aplicação
    _changeState(SignUpLoadingState());
    try {
      await Future.delayed(const Duration(seconds: 2));
      //throw Exception("Erro ao logar.");
      developer.log("Usuário criado com sucesso!");
      //Quando eu concluir o processo, ele tem que ter outro estado.
      _changeState(SignUpSuccessState());
      return true;
    } catch (e) {
      _changeState(SignUpErrorState());
      developer.log("Usuário não conseguiu logar!");
      return false;
    }
  }
}
