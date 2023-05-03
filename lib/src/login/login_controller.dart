import 'package:flutter/material.dart';

class LoginController {
  BuildContext? context;
  Future? init(BuildContext context) {
    this.context = context;
    return null;
  }

  void goToMainPage() {
    Navigator.pushNamed(context!, 'main');
  }

  void goToRegister() {
    Navigator.pushNamed(context!, 'register');
  }
}
