import 'package:flutter/material.dart';
import 'package:design_app/src/main/main_controller.dart';
import 'package:design_app/src/utils/my_colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final MainController _con = MainController();

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
              margin: const EdgeInsets.only(top: 30),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _containerLogo(),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      height: 2,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 90),
                      color: const Color.fromARGB(46, 196, 40, 87),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    _getStarted(),
                    const SizedBox(
                      height: 20,
                    ),
                    _buttonLogin(),
                    _buttonRegister(),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: _waves(),
            ),
          ],
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
        onPressed: () => _con.goToLoginPage(),
        style: ElevatedButton.styleFrom(
            backgroundColor: MyColors.buttonsColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)),
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 50)),
        child: const Text('LOGIN'),
      ),
    );
  }

  Widget _buttonRegister() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
      decoration: BoxDecoration(
        border: Border.all(color: MyColors.borderButtonsColor, width: 10),
        borderRadius: BorderRadius.circular(100),
      ),
      child: ElevatedButton(
        onPressed: () => _con.goToRegisterPage(),
        style: ElevatedButton.styleFrom(
            backgroundColor: MyColors.buttonsColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)),
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 50)),
        child: const Text('REGISTER'),
      ),
    );
  }

  Widget _getStarted() {
    return const Center(
      child: Text(
        'Some text of \nyour choice.',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }

  Widget _containerLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Brand Name',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 10, 84),
              fontSize: 26,
              fontWeight: FontWeight.bold,
            )),
        const SizedBox(width: 15),
        Image.asset(
          'img/logoNoWhite.png',
          width: 80,
          height: 80,
        ),
      ],
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
