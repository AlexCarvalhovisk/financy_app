import 'dart:developer' as developer;

import 'package:financy_app/features/sign_up/sign_up_state.dart';
import 'package:financy_app/services/auth_service.dart';
import 'package:flutter/foundation.dart';

class SignUpController extends ChangeNotifier {
  final AuthService _service;

  SignUpController(this._service);

  SignUpState _state = SignUpInitialState();

  SignUpState get state => _state;

  void _changeState(SignUpState newState) {
    _state = newState;
    //Após o estado da aplicação ser modificado, abaixo estaremos notificando que a modificação ocorreu.
    notifyListeners();
  }

  Future<void> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    //Aqui eu chamei a função e ai tem que atualizar o status da aplicação
    _changeState(SignUpLoadingState());
    try {
      await _service.signUp(
          name: name,
          email: email,
          password: password
      );

      //Quando eu concluir o processo, ele tem que ter outro estado.
      _changeState(SignUpSuccessState());
    } catch (e) {
      _changeState(SignUpErrorState(e.toString()));
    }
  }
}
