enum LoginStatus {
  initialize,
  forgotPassword,
  signUp;

  bool get isForgotPassword => this == LoginStatus.forgotPassword;
}
