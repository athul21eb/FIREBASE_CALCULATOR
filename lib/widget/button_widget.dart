import 'package:calculator/applicaton/bloc/calculator_bloc.dart';
import 'package:flutter/material.dart';
import 'package:calculator/core/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class buttonWidget extends StatelessWidget {
  final String numbername;
  final numbercolor;
  final buttonbgcolor;

  const buttonWidget({
    super.key,
    required this.numbername,
    this.buttonbgcolor = buttoncolor,
    this.numbercolor = whitecolor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: buttonbgcolor,
            padding: const EdgeInsets.all(
              22,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                12,
              ),
            ),
          ),
          onPressed: () {
            context
                .read<CalculatorBloc>()
                .add(CalculatorEvent.onButtonClick(numbername));
          },
          child: Text(
            numbername,
            style: TextStyle(
              fontSize: 18,
              color: numbercolor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
