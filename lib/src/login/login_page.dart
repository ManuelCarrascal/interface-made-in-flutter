import 'package:design_app/src/login/login_controller.dart';
import 'package:design_app/src/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:ionicons/ionicons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginController _con = LoginController();

  @override
  void initState() {
    super.initState();
    _con.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(30, 44, 75, 1),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 70),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    _getStarted(),
                    const SizedBox(
                      height: 50,
                    ),
                    _textFieldEmail(),
                    const SizedBox(
                      height: 10,
                    ),
                    _textFieldPassword(),
                    _remindme(),
                    _buttonLogin(),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 30,
              child: _textLogin(),
            ),
            Positioned(
              top: 10,
              left: 5,
              child: _iconBack(),
            ),
            Positioned(
              bottom: 0,
              child: _waves(),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Image.asset('img/logoWhite.png', width: 50, height: 50),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: _textDontHaveAccount(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _iconBack() {
    return IconButton(
        onPressed: () => _con.goToMainPage(),
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ));
  }

  Widget _textLogin() {
    return const Text(
      'Back',
      style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.normal,
          fontSize: 18,
          fontFamily: 'Roboto'),
    );
  }

  Widget _textFieldEmail() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 5),
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        border: Border.all(
          color: const Color.fromARGB(161, 158, 158, 158),
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'EMAIL',
          hintStyle: TextStyle(
              color: MyColors.primaryColorDark, fontStyle: FontStyle.italic),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(15),
          prefixIcon: const Icon(
            Icons.email_outlined,
            color: Color.fromARGB(161, 158, 158, 158),
          ),
        ),
      ),
    );
  }

  Widget _textFieldPassword() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 5),
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: const Color.fromARGB(161, 158, 158, 158),
          width: 2.0,
        ),
      ),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'PASSWORD',
          hintStyle: TextStyle(
              color: MyColors.primaryColorDark, fontStyle: FontStyle.italic),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(15),
          prefixIcon: Icon(
            Icons.lock_outline,
            color: MyColors.primaryColor,
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Ionicons.eye_off_outline,
              color: MyColors.primaryColor,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buttonLogin() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
      decoration: BoxDecoration(
        border: Border.all(color: MyColors.borderButtonsColor, width: 10),
        borderRadius: BorderRadius.circular(100),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: MyColors.buttonsColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)),
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 50)),
        child: const Text('LOGIN'),
      ),
    );
  }

  Widget _textDontHaveAccount() {
    return Container(
      height: 50,
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          text: 'Don\'t have an account? ',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'Sign up',
              style: const TextStyle(
                color: Colors.grey,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => _con.goToRegister(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _remindme() {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(right: 75, top: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Radio(
              value: 1,
              groupValue: null,
              onChanged: (value) {
                // Aquí puedes agregar la lógica para manejar el cambio de valor del radio button
              },
              activeColor: Colors.grey,
              fillColor:
                  MaterialStateColor.resolveWith((states) => Colors.grey),
            ),
            const Text(
              'Remember me',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getStarted() {
    return const Center(
      child: Text(
        'Let\'s get started ?',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }

  Widget _waves() {
    return Image.asset(
      'img/waves.png',
      width: 600,
      height: 280,
      fit: BoxFit.cover,
    );
  }
}
