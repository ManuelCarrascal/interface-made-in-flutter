import 'package:design_app/src/main/main_page.dart';
import 'package:design_app/src/register/register_page.dart';
import 'package:design_app/src/login/login_page.dart';
import 'package:design_app/src/utils/my_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Design App',
      initialRoute: 'main',
      routes: {
        'login': ((BuildContext context) => const LoginPage()),
        'register': ((BuildContext context) => const RegisterPage()),
        'main': ((BuildContext context) => const MainPage()),
      },
      theme: ThemeData(primaryColor: MyColors.primaryColor),
    );
  }
}
