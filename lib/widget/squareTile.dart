import 'package:calculator/core/colors.dart';
import 'package:flutter/material.dart';

class Squaretile extends StatelessWidget {
  const Squaretile({super.key, required this.Imagepath});
  final Imagepath;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey.shade200,
          border: Border.all(
            color: whitecolor,
          )),
      child: Image.asset(
        Imagepath,
        height: 40,
      ),
    );
  }
}
