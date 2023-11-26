part of 'login.bloc.dart';

class LoginState extends Equatable {
  final LoginStatus loginStatus;
  const LoginState.initialize() : loginStatus = LoginStatus.initialize;
  const LoginState.forgotPassword() : loginStatus = LoginStatus.forgotPassword;
  const LoginState.signUp() : loginStatus = LoginStatus.signUp;
  @override
  List<Object?> get props => [loginStatus];
}
