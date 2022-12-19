import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

void main() {
  runApp(const RandomColors());
}

class RandomColors extends StatefulWidget {
  const RandomColors({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RandomColors createState() => _RandomColors();
}

class _RandomColors extends State<RandomColors> {
  int points = 0;
  late String randomName;
  late Color randomColor;
  late String mensajeFinal = '';
  late bool fin = false;
  var colorNames = [
    'azul',
    'verde',
    'naranja',
    'rosa',
    'rojo',
    'amarillo',
    'negro',
    'morado'
  ];
  var colorHex = [
    const Color(0xFF0000FF),
    const Color(0xFF00FF00),
    const Color(0xFFFF914D),
    const Color(0xFFFF66C4),
    const Color(0xFFFF0000),
    const Color(0xFFFBC512),
    Colors.black,
    Colors.purple,
  ];

  @override
  void initState() {
    super.initState();
    getRandomColor();
    getRandomName();
    timer();
  }

  void timer() {
    Timer.periodic(const Duration(milliseconds: 800), (timer) {
      if (!fin) {
        getRandomColor();
        getRandomName();
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Ejercicio 11'),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Puntos: $points',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  onGiftTap(randomName, randomColor);
                },
                child: Column(
                  children: [
                    Container(
                      width: 120,
                      color: randomColor,
                      height: 120,
                    ),
                    Text(
                      randomName,
                      style: TextStyle(
                          color: randomColor,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              mensajeFinal,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: const Size(40, 50)),
              child: const Text('Repetir', style: TextStyle(fontSize: 20)),
              onPressed: () {
                fin = false;
                points = 0;
                mensajeFinal = '';
              },
            ),
          ],
        ),
      ),
    );
  }

  void getRandomColor() {
    Random random = Random();
    int randomNumber = random.nextInt(8);
    randomColor = colorHex[randomNumber];
  }

  void getRandomName() {
    Random random = Random();
    int randomNumber = random.nextInt(8);
    randomName = colorNames[randomNumber];
  }

  String hexToStringConverter(Color hexColor) {
    if (hexColor == const Color(0xFF0000FF)) {
      return 'azul';
    } else if (hexColor == const Color(0xFF00FF00)) {
      return 'verde';
    } else if (hexColor == const Color(0xFFFF914D)) {
      return 'naranja';
    } else if (hexColor == const Color(0xFFFF66C4)) {
      return 'rosa';
    } else if (hexColor == const Color(0xFFFF0000)) {
      return 'rojo';
    } else if (hexColor == Colors.black) {
      return 'negro';
    } else if (hexColor == Colors.purple) {
      return 'morado';
    } else {
      return 'amarillo';
    }
  }

  void onGiftTap(String name, Color color) {
    var colorToString = hexToStringConverter(color);
    if (name == colorToString) {
      points++;
    } else {
      points--;
    }

    if (points == 10) {
      mensajeFinal =
          'Felicidades has ganado!!!!! Has conseguido los $points puntos';
      fin = true;
    } else if (points < 0) {
      mensajeFinal =
          'Lo siento has perdido tu puntuación es menor que 0, vuelve a intentarlo';
      fin = true;
    }
    setState(() {});
  }
}
