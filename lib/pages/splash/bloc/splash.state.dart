part of 'splash.bloc.dart';

class SplashState extends Equatable {
  final SplashStatus status;

  const SplashState.initial() : status = SplashStatus.unknown;

  const SplashState.authenticated() : status = SplashStatus.authenticated;

  const SplashState.unauthenticated() : status = SplashStatus.unauthenticated;

  @override
  List<Object?> get props => [status];
}
