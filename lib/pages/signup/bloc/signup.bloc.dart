import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/common/enums/signup_status.enum.dart';
import 'package:equatable/equatable.dart';
part 'signup.event.dart';
part 'signup.state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(const SignupState.init()) {
    on<SignupStatusChanged>(_onSignupStatusChanged);
  }
  void _onSignupStatusChanged(
    SignupEvent loginEvent,
    Emitter<SignupState> loginEmitter,
  ) {
    if (loginEvent is SignupStatusChanged) {
      switch (loginEvent.status) {
        default:
      }
    }
  }
}
