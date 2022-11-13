import 'package:flutter/material.dart';
import 'Pantalla.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Probando drawer',
        home: Scaffold(
            appBar: AppBar(
              title: Center(
                child: Text('Ejercicio 7'),
              ),
            ),
            drawer: MenuLateral(),
            body: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(50),
                      width: 300,
                      height: 300,
                      alignment: Alignment.center,
                      color: Colors.green,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/tiktok.jpg', width: 200, height: 200),
                          Text('\nEjemplo de un container 1'),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.all(50),
                      width: 300,
                      height: 300,
                      alignment: Alignment.center,
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/instagram.jpg', width: 200, height: 200),
                          Text('\nEjemplo de un container 2'),
                        ],
                      ))
                ])));
  }
}
