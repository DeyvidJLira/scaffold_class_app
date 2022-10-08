extension ExtensionString on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+$");
    return emailRegExp.hasMatch(this);
  }

  bool get isValidPassword {
    final passwordRegExp = RegExp(r"^([a-zA-Z0-9.]{6,20})+$");
    return passwordRegExp.hasMatch(this);
  }
}
