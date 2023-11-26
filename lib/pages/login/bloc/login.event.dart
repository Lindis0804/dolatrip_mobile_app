part of 'login.bloc.dart';

sealed class LoginEvent {
  const LoginEvent();
}

class ForgotPasswordWhenLogIn extends LoginEvent {
  const ForgotPasswordWhenLogIn();
}

class SignUp extends LoginEvent {
  const SignUp();
}

class Inititalize extends LoginEvent {
  const Inititalize();
}

class LoginStatusChanged extends LoginEvent {
  final LoginStatus status;
  const LoginStatusChanged(this.status);
}
