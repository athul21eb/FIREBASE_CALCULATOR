import 'package:calculator/core/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../widget/my_textfield.dart';

import '../widget/signInButton.dart';
import '../widget/sizedboxs.dart';
import '../widget/squareTile.dart';

class RegisterPAge extends StatefulWidget {
  final Function()? onTap;
  const RegisterPAge({super.key, required this.onTap});

  @override
  State<RegisterPAge> createState() => _RegisterPAgeState();
}

class _RegisterPAgeState extends State<RegisterPAge> {
  // text editing controllers
  final emailcontroller = TextEditingController();

  final passwordcontroller = TextEditingController();

  final confirmpasswordcontroller = TextEditingController();

  // signin details
  void signUserUP() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    if (passwordcontroller.text != confirmpasswordcontroller.text) {
      Navigator.pop(context);

      showdialogmessage("Password does'nt Match");
      return;
    }
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailcontroller.text,
        password: passwordcontroller.text,
      );
      // pop the loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // pop the loading circle
      Navigator.pop(context);

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
                  Icons.person,
                  size: 100,
                ),
              ),
              Kheight30,

              //Welcome,You Have been missed!
              Text(
                "Lets create a Account For you",
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
              Kheight10,

              //password
              MyTextfield(
                controller: passwordcontroller,
                hinttext: "Password",
                obsecuretext: true,
              ),
              Kheight10,
              MyTextfield(
                controller: confirmpasswordcontroller,
                hinttext: "Confirm Password",
                obsecuretext: true,
              ),
              Kheight10,
              //forgotpassword
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.symmetric(horizontal: 25),
              //       child: Text(
              //         "forgotten Password ?",
              //         style: TextStyle(
              //           color: Colors.grey.shade600,
              //         ),
              //       ),
              //     )
              //   ],
              // ),

              Kheight30,

              //SignIn
              SignInButton(
                name: "Sign-Up",
                ontap: signUserUP,
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
                    "Already have an Account?",
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                  KWidth(4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Login Now",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
