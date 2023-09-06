import 'package:calculator/core/colors.dart';
import 'package:calculator/widget/my_textfield.dart';
import 'package:calculator/widget/sizedboxs.dart';
import 'package:calculator/widget/squareTile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../widget/signInButton.dart';

class Loginpage extends StatefulWidget {
  Loginpage({Key? key, required this.onTap}) : super(key: key);
  final Function()? onTap;

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  // text editing controllers
  final emailcontroller = TextEditingController();

  final passwordcontroller = TextEditingController();

  // signin details
  void signUserin() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailcontroller.text,
        password: passwordcontroller.text,
      );
      // pop the loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // pop the loading circle
      Navigator.pop(context);
      //show dialog

      showdialogmessage(e.code.toString());
    }
  }

//show dialog box

  void showdialogmessage(String messege) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(messege),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Kheight50,
              //Logo
              const Center(
                child: Icon(
                  Icons.lock,
                  size: 100,
                ),
              ),
              Kheight30,

              //Welcome,You Have been missed!
              Text(
                "Welcome, You Have\'be Missed",
                style: TextStyle(
                  color: Colors.grey.shade800,
                ),
              ),
              Kheight30,

              //username
              MyTextfield(
                controller: emailcontroller,
                hinttext: "E-mail",
                obsecuretext: false,
              ),
              Kheight30,

              //password
              MyTextfield(
                controller: passwordcontroller,
                hinttext: "Password",
                obsecuretext: true,
              ),
              Kheight10,
              //forgotpassword
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      "forgotten Password ?",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                    ),
                  )
                ],
              ),

              Kheight30,

              //SignIn
              SignInButton(
                name: "Sign-In",
                ontap: signUserin,
              ),
              Kheight50,

              // or continue with
              Row(
                children: [
                  const Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: blackcolor,
                    ),
                  ),
                  Text(
                    " Or Continue With",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  const Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: blackcolor,
                    ),
                  ),
                ],
              ),

              Kheight50,

              //other logins google+
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Squaretile(
                  Imagepath: 'lib/logos/google.png',
                ),
                KWidth(25),
                const Squaretile(
                  Imagepath: 'lib/logos/apple.png',
                ),
              ]),

              Kheight30,

              //registernow
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a Member?",
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                  KWidth(4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text(
                      "Register Now",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
