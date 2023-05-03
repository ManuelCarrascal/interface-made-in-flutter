import 'package:flutter/material.dart';

class MainController {
  BuildContext? context;

  Future? init(BuildContext context) {
    this.context = context;
    return null;
  }

  void goToRegisterPage() {
    Navigator.pushNamed(context!, 'register');
  }

  void goToLoginPage() {
    Navigator.pushNamed(context!, 'login');
  }
}
