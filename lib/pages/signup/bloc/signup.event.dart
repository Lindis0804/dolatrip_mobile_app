part of 'signup.bloc.dart';

sealed class SignupEvent {
  const SignupEvent();
}

class SignupStatusChanged extends SignupEvent {
  final SignupStatus status;
  const SignupStatusChanged(this.status);
}
