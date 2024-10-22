import 'package:flutter/material.dart';

class tela extends StatefulWidget {
  final String title;

  const tela({super.key, required this.title});

  @override
  State<tela> createState() => _telaState();
}

class _telaState extends State<tela> {
  int counter = 3;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Container(
        child: Center(
          child: GestureDetector(
            child: Text(
              'contador ${counter}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            onTap: () {
              if (counter > 1000) {
                counter = 0;
                Navigator.pushNamed(context, "/");
              }
              setState(() {
                counter = counter * 3;
              });
            },
          ),
        ),
      ),
    );
  }
}
