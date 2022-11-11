import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ejemplo contenedores',
        home: Scaffold(
            appBar: AppBar(
              title: Center(
                child: Text('Ejemplo de Container. Ejercicio 4'),
              ),
            ),
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
                          Text('\nEjemplo de un container'),
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
                          Image.asset('assets/images/movil.jpg'),
                          Text('\nEjemplo de un container'),
                        ],
                      ))
                ])));
  }
}
