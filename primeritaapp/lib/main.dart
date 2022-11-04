import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
      Center(
        child:
        Text('Este es un ejemplo de las distintas posibilidades que nos dan los textos',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 25,
            fontWeight: FontWeight.w200,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.solid,
            backgroundColor: Colors.cyan,
            letterSpacing: 2,
            height: 2,
          ),
        ),
      ),
    );
  }
}

