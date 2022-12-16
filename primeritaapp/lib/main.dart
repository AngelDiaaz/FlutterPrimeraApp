import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejercicio 10',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AnimateApp(),
    );
  }
}

class AnimateApp extends StatefulWidget {
  const AnimateApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AnimateAppState();
  }
}

class _AnimateAppState extends State<AnimateApp>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  late CurvedAnimation curve;
  late double _widthImage;

  @override
  void initState() {
    super.initState();
    // Create AnimationController object
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));
    curve = CurvedAnimation(parent: controller, curve: Curves.easeInQuint);
    // Create Animation object through Tween object
    animation = Tween(begin: 50.0, end: 200.0).animate(controller)
      ..addListener(() {
        // Note: This sentence cannot be omitted, otherwise the widget will not be redrawn and the animation effect will not be seen
        setState(() {});
      });
    _widthImage = 150;
    // Perform animation
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ejercicio 10',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.blue),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Ejercicio 10'),
            ),
            body: Center(
              child: GestureDetector(
                child: RotationTransition(
                    turns: curve,
                    child: Image(
                      image: const AssetImage("assets/images/f1.jpg"),
                      width: _widthImage,
                    )),
                onTap: () {
                  if (controller.isCompleted) {
                    controller.reverse();
                    _widthImage = 300;
                  } else {
                    controller.forward();
                    _widthImage = 150;
                  }
                  curve = CurvedAnimation(
                      parent: controller, curve: Curves.elasticIn);
                },
                onDoubleTap: () {
                  if (controller.isCompleted) {
                    controller.reverse();
                  } else {
                    controller.forward();
                  }
                  curve = CurvedAnimation(
                      parent: controller, curve: Curves.bounceInOut);
                },
              ),
            )));
  }

  @override
  void dispose() {
    // Resource release
    controller.dispose();
    super.dispose();
  }
}
