import 'package:calculator/presentation/loginpage.dart';
import 'package:calculator/presentation/registerPage.dart';
import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  //intially show login page
  bool showLoginpage = true;

//change b/w login and
  void togglebutton() {
    setState(() {
      showLoginpage = !showLoginpage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginpage) {
      return Loginpage(onTap: togglebutton);
    } else {
      return RegisterPAge(onTap: togglebutton);
    }
  }
}
