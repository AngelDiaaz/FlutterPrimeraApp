import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ejemplo',
      // ThemeData.light().copyWith(
      //   appBarTheme: const AppBarTheme(
      //     color: Colors.indigo,
      //   )
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          color: Colors.indigo,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueAccent),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.greenAccent),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple),
          ),
          labelStyle: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final List<TextEditingController> _textEditingControllers = [];
  final List<Widget> _widgets = [];
  final _numero = Random().nextInt(99 - 1) + 1;

  HomeWidget({Key? key}) : super(key: key) {
    List<String> fieldNames = [
      "Número",
    ];
    for (int i = 0; i < fieldNames.length; i++) {
      String fieldName = fieldNames[i];
      TextEditingController textEditingController =
          TextEditingController(text: "");
      _textEditingControllers.add(textEditingController);
      _widgets.add(Padding(
        padding: const EdgeInsets.all(30.0),
        child: _createTextFormField(fieldName, textEditingController),
      ));
    }
    _widgets.add(ElevatedButton(
      onPressed: () {
        _formKey.currentState?.validate();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.indigo,
        minimumSize: const Size(50, 50),// Background color
      ),
      child: const Text('Guardar', style: TextStyle(fontSize: 18)),
    ));
    _widgets.add(const SizedBox(height: 200,));
  }

  TextFormField _createTextFormField(
      String fieldName, TextEditingController controller) {
    return TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'Por favor, introduzca algún número.';
          } else if (int.parse(value) > _numero) {
            return 'El número introducido es mayor';
          } else if (int.parse(value) < _numero) {
            return 'El número introducido es menor';
          } else if (int.parse(value) == _numero){
            _widgets.add(const Center(
                child: Text('Enhorabuena has acertado el número!!!',
                  style: TextStyle(fontSize: 20,),)));
          }
          return null;
        },
        decoration: InputDecoration(
            icon: const Icon(Icons.numbers),
            hintText: fieldName,
            labelText: 'Introduzca un $fieldName'),
        style: const TextStyle(
          fontSize: 18,
        ),
        controller: controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Ejemplo de formularios"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
                key: _formKey,
                child: ListView(
                  children: _widgets,
                ))));
  }
}
