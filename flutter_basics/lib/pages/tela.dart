import 'package:flutter/material.dart';

class tela extends StatefulWidget {
  final String title;

  const tela({super.key, required this.title});

  @override
  State<tela> createState() => _telaState();
}

class _telaState extends State<tela> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: Container(
        child: Center(
        child: Text('flutter'),
      ), 
    ),
    );
  }
}
