import 'package:flutter/material.dart';

void main() {
  runApp(Container(
    child: Center(
      child: Text('hello world?', textDirection: 
        TextDirection.ltr, 
        style: TextStyle(color: Colors.white, fontSize: 25.0),),
    ),
  ));
}