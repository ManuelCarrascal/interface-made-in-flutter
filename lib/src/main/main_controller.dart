import 'package:flutter/material.dart';

class MainController {
  BuildContext? context;

  Future? init(BuildContext context) {
    this.context = context;
  }

  void goToRegisterPage() {
    Navigator.pushNamed(context!, 'register');
  }

  void goToLoginPage() {
    Navigator.pushNamed(context!, 'login');
  }
}
