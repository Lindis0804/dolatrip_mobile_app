part of 'signup.bloc.dart';

class SignupState extends Equatable {
  final SignupStatus signupStatus;
  const SignupState.init() : signupStatus = SignupStatus.init;
  @override
  List<Object?> get props => [signupStatus];
}
