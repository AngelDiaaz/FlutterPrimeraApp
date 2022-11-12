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
                child: Text('Ejemplo de Container. Ejercicio 5'),
              ),
            ),
            body: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                            color: Colors.blue,
                            width: 300,
                            height: 300,
                            child: Transform(
                                alignment: Alignment.center,
                                transform: Matrix4.skewY(0.3)
                                  ..rotateZ(10 / 20.0),
                                child: Container(
                                  padding: const EdgeInsets.all(8.0),
                                  color: Colors.amberAccent,
                                  child: Column(
                                    children: [
                                      Image.asset('assets/images/whatsapp.jpg', width: 240, height: 240,),
                                      Text('\nEjemplo de un container con transform'),
                                    ],
                                  ),
                                ))),
                      ])
                ])));
  }
}
