import 'package:flutter/material.dart';

class Wallpost extends StatelessWidget {
  const Wallpost({super.key, required this.output, required this.input});

  final output;
  final input;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            children: [
              Text(input + "="),
              Text(output),
            ],
          )
        ],
      ),
    );
  }
}
