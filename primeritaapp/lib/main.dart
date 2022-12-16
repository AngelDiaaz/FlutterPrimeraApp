import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyApp> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _desincrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Probando drawer',
        home: Scaffold(
            appBar: AppBar(
              title: const Center(
                child: Text('Ejercicio 8'),
              ),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    '$_counter',
                  ),
                ],
              ),
            ),
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(padding: const EdgeInsets.all(5),
                child: FloatingActionButton(
                  onPressed: _desincrementCounter,
                  tooltip: 'Resta',
                  child: const Icon(Icons.remove),
                ),),

                Padding(padding: const EdgeInsets.all(5),
                  child: FloatingActionButton(
                    onPressed: _incrementCounter,
                    tooltip: 'Suma',
                    child: const Icon(Icons.add),
                  ),),
                ],
              ),
            ));
  }
}
