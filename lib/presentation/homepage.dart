import 'package:calculator/applicaton/bloc/calculator_bloc.dart';
import 'package:calculator/presentation/thewall.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '../core/colors.dart';
import '../widget/button_widget.dart';

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    void signuserOut() async {
      await FirebaseAuth.instance.signOut();
    }

    ;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: blackcolor,
        actions: [
          IconButton(
            icon: Icon(Icons.history),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Thewall(),
                )),
          ),
          IconButton(
              onPressed: signuserOut,
              icon: Icon(
                Icons.logout_sharp,
              ))
        ],
      ),
      backgroundColor: blackcolor,
      body: Column(
        children: [
          //Input  Output Display

          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  BlocBuilder<CalculatorBloc, CalculatorState>(
                    builder: (context, state) {
                      return Text(
                        state.hideinput ? '' : "${state.input}",
                        style: TextStyle(
                          color: whitecolor,
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  BlocBuilder<CalculatorBloc, CalculatorState>(
                      builder: (context, state) {
                    return Text(
                      "${state.output}",
                      style: TextStyle(
                        color: whitecolor,
                        fontSize: state.outputsize,
                        fontWeight: FontWeight.w100,
                      ),
                    );
                  }),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
          //Input  Output Display Area ^^^^^^^^^^^
          Column(
            children: [
              Row(
                children: [
                  buttonWidget(
                    numbername: 'AC',
                    numbercolor: orangecolor,
                    buttonbgcolor: operatorcolor,
                  ),
                  buttonWidget(
                    numbername: '<',
                    numbercolor: orangecolor,
                    buttonbgcolor: operatorcolor,
                  ),
                  buttonWidget(
                    numbername: '^',
                    numbercolor: orangecolor,
                    buttonbgcolor: operatorcolor,
                  ),
                  buttonWidget(
                    numbername: '/',
                    numbercolor: orangecolor,
                    buttonbgcolor: operatorcolor,
                  ),
                ],
              ),
              Row(
                children: [
                  buttonWidget(
                    numbername: '7',
                  ),
                  buttonWidget(
                    numbername: '8',
                  ),
                  buttonWidget(
                    numbername: '9',
                  ),
                  buttonWidget(
                    numbername: 'x',
                    numbercolor: orangecolor,
                    buttonbgcolor: operatorcolor,
                  ),
                ],
              ),
              Row(
                children: [
                  buttonWidget(
                    numbername: '4',
                  ),
                  buttonWidget(
                    numbername: '5',
                  ),
                  buttonWidget(
                    numbername: '6',
                  ),
                  buttonWidget(
                    numbername: '-',
                    numbercolor: orangecolor,
                    buttonbgcolor: operatorcolor,
                  ),
                ],
              ),
              Row(
                children: [
                  buttonWidget(
                    numbername: '1',
                  ),
                  buttonWidget(
                    numbername: '2',
                  ),
                  buttonWidget(
                    numbername: '3',
                  ),
                  buttonWidget(
                    numbername: '+',
                    numbercolor: orangecolor,
                    buttonbgcolor: operatorcolor,
                  ),
                ],
              ),
              Row(
                children: [
                  buttonWidget(
                    numbername: '%',
                    numbercolor: orangecolor,
                    buttonbgcolor: operatorcolor,
                  ),
                  buttonWidget(
                    numbername: '0',
                  ),
                  buttonWidget(
                    numbername: '.',
                  ),
                  buttonWidget(
                    numbername: '=',
                    buttonbgcolor: orangecolor,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
