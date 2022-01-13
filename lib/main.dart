import 'package:flutter/material.dart';
import 'package:flutter_tests/imcCalculator/IMC.dart';
import 'package:flutter_tests/screens/home_page/home_page.dart';
import 'package:flutter_tests/screens/view_imc_page/imc_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'IMC Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => HomePage(),
        IMCPage.routeName : (context) => IMCPage(),
      },
    );
  }
}


