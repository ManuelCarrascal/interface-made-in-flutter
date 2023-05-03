import 'package:flutter/material.dart';

class RegisterController {
  BuildContext? context;
  Future? init(BuildContext context) {
    this.context = context;
    return null;
  }

  void goToMainPage() {
    Navigator.pushNamed(context!, 'main');
  }

  void goToLoginPage() {
    Navigator.pushNamed(context!, 'login');
  }
}
