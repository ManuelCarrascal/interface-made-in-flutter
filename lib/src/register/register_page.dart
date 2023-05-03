import 'package:design_app/src/register/register_controller.dart';
import 'package:design_app/src/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:ionicons/ionicons.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final RegisterController _con = RegisterController();

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
                    _buttonLogin(),
                    _dividerCustom(),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: _waves(),
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
              top: 10,
              right: 10,
              child: Image.asset('img/logoWhite.png', width: 50, height: 50),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 320,
              child: _socialMedias(),
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
            color: MyColors.primaryColorDark,
            fontStyle: FontStyle.italic,
          ),
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
        child: const Text('REGISTER'),
      ),
    );
  }

  Widget _textDontHaveAccount() {
    return Container(
      height: 50,
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          text: 'Already a member? ',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'Sign in',
              style: const TextStyle(
                color: Colors.grey,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => _con.goToLoginPage(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getStarted() {
    return const Center(
      child: Text(
        'Join us now !',
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

Widget _dividerCustom() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: const Row(
      children: [
        Expanded(
          child: Divider(color: Colors.white),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Text("Social Signup",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                  fontSize: 18)),
        ),
        Expanded(
          child: Divider(color: Colors.white),
        ),
      ],
    ),
  );
}

Widget _socialMedias() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      CircleAvatar(
        radius: 25,
        backgroundColor: Color.fromARGB(255, 11, 84, 255),
        child: Image.asset(
          'img/IconFacebook.png',
          width: 40,
        ),
      ),
      const SizedBox(
        width: 30,
      ),
      CircleAvatar(
        radius: 25,
        backgroundColor: Colors.red,
        child: Image.asset(
          'img/IconGoogler.png',
          width: 40,
        ),
      ),
      const SizedBox(
        width: 30,
      ),
      CircleAvatar(
        radius: 25,
        backgroundColor: Colors.lightBlue,
        child: Image.asset(
          'img/IconTwitter.png',
          width: 40,
        ),
      ),
    ],
  );
}
