import 'package:calculator/applicaton/bloc/calculator_bloc.dart';
import 'package:calculator/firebaseAuth/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

//...
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CalculatorBloc(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: ThemeData(
        //     textTheme: TextTheme(
        //         bodySmall: TextStyle(
        //           fontSize: 15,
        //         ),
        //         bodyLarge: TextStyle(
        //           fontSize: 22,
        //         ),
        //         bodyMedium: TextStyle(
        //           fontSize: 18,
        //         ))),
        title: 'Calculator App',
        home: Auth_Page(),
      ),
    );
  }
}
