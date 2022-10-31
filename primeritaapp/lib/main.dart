import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    	title: 'filas y columnas anidadas',
    home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Ejemplo de filas y columnas anidadas'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/call.jpg', 
                  width: 200,
                  height: 200),
                   
                  Text('Llamar por teléfono'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/mensaje.jpg', 
                  width: 200,
                  height: 200),
                  Text('Enviar mensaje'),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/instagram.jpg',
                  width: 200,
                  height: 200),
                  Text('Instagram'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/whatsapp.jpg', 
                  width: 200,
                  height: 200),
                  Text('Whatsapp'),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  ));

}

