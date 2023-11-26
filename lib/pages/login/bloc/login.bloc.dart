import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/common/enums/login_status.enum.dart';
import 'package:equatable/equatable.dart';
part 'login.event.dart';
part 'login.state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState.initialize()) {
    on<ForgotPasswordWhenLogIn>(_onForgotPasswordWhenLogIn);
    on<LoginStatusChanged>(_onLoginStatusChanged);
    on<Inititalize>(_onInitialize);
    on<SignUp>(_onSignUp);
  }
  void _onLoginStatusChanged(
    LoginEvent loginEvent,
    Emitter<LoginState> loginEmitter,
  ) {
    if (loginEvent is LoginStatusChanged) {
      switch (loginEvent.status) {
        case LoginStatus.forgotPassword:
          loginEmitter(const LoginState.forgotPassword());
          break;
        case LoginStatus.signUp:
          loginEmitter(const LoginState.signUp());
          break;
        default:
          loginEmitter(const LoginState.initialize());
          break;
      }
    }
  }

  void _onInitialize(LoginEvent loginEvent, Emitter<LoginState> loginEmitter) {
    add(const LoginStatusChanged(LoginStatus.initialize));
  }

  void _onForgotPasswordWhenLogIn(
      LoginEvent loginEvent, Emitter<LoginState> loginEmitter) {
    print('Forgot password.');
    add(const LoginStatusChanged(LoginStatus.forgotPassword));
  }

  void _onSignUp(LoginEvent loginEvent, Emitter<LoginState> loginEmitter) {
    print('Create new account.');
    add(const LoginStatusChanged(LoginStatus.signUp));
  }
}
