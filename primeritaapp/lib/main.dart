import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ejemplo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueGrey),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple),
          ),
          labelStyle: TextStyle(
            color: Colors.blueGrey,
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

  HomeWidget({Key? key}) : super(key: key) {
    List<String> fieldNames = [
      "Nombre",
      "Constraseña",
    ];
    for (int i = 0; i < fieldNames.length; i++) {
      String fieldName = fieldNames[i];
      TextEditingController textEditingController =
          TextEditingController(text: "");
      _textEditingControllers.add(textEditingController);
      _widgets.add(Padding(
        padding: const EdgeInsets.all(15.0),
        child: _createTextFormField(fieldName, textEditingController),
      ));
    }
    _widgets.add(ElevatedButton(
      onPressed: () {
        _formKey.currentState?.validate();
      },
      child: const Text('Guardar'),
    ));
  }

  TextFormField _createTextFormField(
      String fieldName, TextEditingController controller) {
    return TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'Por favor, introduzca $fieldName.';
          } else if (fieldName == 'Nombre' &&
              !(RegExp(r"^([A-Z][a-zñáéíóú]+\s*)+$").hasMatch(value))) {
            return 'El nombre debe empiezaz por una letra '
                '\nmayúscula, y que los caracteres que '
                '\nle siguien son minúsculas';
          } else if (fieldName == 'Constraseña' &&
              !(RegExp(r"^(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{8,16}$")
                  .hasMatch(value))) {
            return 'La contraseña debe tener al entre 8 y '
                '\n16 caracteres, al menos un dígito, al '
                '\nmenos una minúscula y al menos \nuna mayúscula.';
          }
          return null;
        },
        decoration: InputDecoration(
            icon: const Icon(Icons.person),
            hintText: fieldName,
            labelText: 'Introduzca $fieldName'),
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
