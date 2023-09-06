import 'package:calculator/core/colors.dart';
import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  const MyTextfield({
    Key? key,
    required this.controller,
    required this.hinttext,
    required this.obsecuretext,
  }) : super(key: key);
  final controller;
  final String hinttext;
  final bool obsecuretext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        obscureText: obsecuretext,
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: whitecolor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade400,
            ),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: hinttext,
        ),
      ),
    );
  }
}
