import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ejemplo contenedores',
        home: Scaffold(
            appBar: AppBar(
              title: const Center(
                child: Text('Ejemplo de Container. Ejercicio 4'),
              ),
            ),
            body: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      margin: const EdgeInsets.all(50),
                      width: 300,
                      height: 300,
                      alignment: Alignment.center,
                      color: Colors.green,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/movil.jpg'),
                          const Text('\nEjemplo de un container 1'),
                        ],
                      )),
                  Container(
                      margin: const EdgeInsets.all(50),
                      width: 300,
                      height: 300,
                      alignment: Alignment.center,
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/call.jpg'),
                          const Text('\nEjemplo de un container 2'),
                        ],
                      ))
                ])));
  }
}
