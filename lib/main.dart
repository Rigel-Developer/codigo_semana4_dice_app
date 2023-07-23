import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int randomNumberRigth = 1;
  int randomNumberLeft = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: const Text(
            "DiceApp",
          ),
          elevation: 10.0,
          backgroundColor: Colors.redAccent,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () {
                    randomNumberLeft = Random().nextInt(6) +
                        1; // se le suma 1 para que no de 0 ya que el valor va de 0 -5
                    randomNumberRigth = Random().nextInt(6) + 1;
                    print(randomNumberLeft);
                    setState(() {});
                  },
                  child: Image.asset(
                    "assets/images/dice$randomNumberLeft.png",
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () {
                    randomNumberLeft = Random().nextInt(6) + 1;
                    randomNumberRigth = Random().nextInt(6) + 1;

                    print(randomNumberRigth);
                    setState(() {});
                  },
                  child: Image.asset(
                    "assets/images/dice$randomNumberRigth.png",
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
