import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Probando drawer',
        home: Scaffold(
            appBar: AppBar(
              title: const Center(
                child: Text('Ejercicio 9'),
              ),
            ),
            body: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[100],
                    child: Align(
                        child: OutlinedButton(
                      child: const Text('Outlined Button'),
                      onPressed: () {},
                    ))),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[100],
                  child: Align(
                    child:
                    TextButton(
                      child: const Text('Text Button'),
                      onPressed: () {},
                    ),
                  )
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[100],
                  child: Align(
                      child:
                      IconButton(
                        tooltip: 'Información',
                        icon: const Icon(Icons.person),
                        iconSize: 30,
                        color: Colors.red,
                        onPressed: () {},
                      )
                  )
                  ,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[100],
                  child: Align(
                    child: FloatingActionButton(
                      tooltip: 'Resta',
                      onPressed: () {},
                      child: const Icon(Icons.remove),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[100],
                  child: Align(
                      child:
                      PopupMenuButton<String>(
                        itemBuilder: (context) {
                          return <PopupMenuEntry<String>>[
                            const PopupMenuItem<String>(
                              value: 'uno',
                              child: Text('uno'),
                            ),
                            const PopupMenuItem<String>(
                              value: 'dos',
                              child: Text('dos'),
                            ),
                            const PopupMenuItem<String>(
                              value: 'tres',
                              child: Text('tres'),
                            ),
                            const PopupMenuItem<String>(
                              value: 'cuatro',
                              child: Text('cuatro'),
                            ),
                            const PopupMenuItem<String>(
                              value: 'cinco',
                              child: Text('cinco'),
                            ),
                          ];
                        },
                      )
                  )
                  ,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[100],
                  child: Align(
                    child: ElevatedButton.icon(
                      label: const Text('Elevated Button'),
                      icon: const Icon(Icons.android_outlined),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            )));
  }
}
