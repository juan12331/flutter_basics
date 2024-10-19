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
    return Container(
      child: Center(
        child: Text(
          widget.title,
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 25.0),
        ),
      ),
    );
  }
}
