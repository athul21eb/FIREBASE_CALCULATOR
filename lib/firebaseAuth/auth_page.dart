import 'package:calculator/firebaseAuth/loginOrregister.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../presentation/homepage.dart';

class Auth_Page extends StatefulWidget {
  const Auth_Page({super.key});

  @override
  State<Auth_Page> createState() => _Auth_PageState();
}

class _Auth_PageState extends State<Auth_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.userChanges(),
        builder: (context, snapshot) {
          // user is logeedin
          if (snapshot.hasData) {
            return CalculatorApp();
          }
          // user is not loggen in
          else {
            return LoginOrRegister();
          }
        },
      ),
    );
  }
}
