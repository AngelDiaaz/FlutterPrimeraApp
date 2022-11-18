import 'package:flutter/material.dart';
import 'Pantalla.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Probando drawer',
        home: Scaffold(
            appBar: AppBar(
              title: const Center(
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
                          Image.asset('assets/images/movil.jpg'),
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
                          Image.asset('assets/images/call.jpg'),
                          Text('\nEjemplo de un container 2'),
                        ],
                      ))
                ])));
  }
}
