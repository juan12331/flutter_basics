import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();

}

class _MyWidgetState extends State<Home> {
  int counter = 0;
  int counter2 = 0;
  int counter3 = 0;
  int counter4 = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text(
            "home page",
            style: TextStyle(fontSize: 25.5, color: Colors.white),
          ),
        ),
      ),
      body: Center( // Centraliza o conteúdo
        child: Container(
          width: 300, // Duplicado
          height: 300, // Duplicado
          color: Colors.black,
          child: Center( // Centraliza o stack dentro do container
            child: Container(
              width: 240, // Duplicado
              height: 240, // Duplicado
              color: Colors.black,
              child: Stack(
                children: [
                  Container(
                    width: 110, // Duplicado
                    height: 110, // Duplicado
                    color:  Color.fromARGB(255, counter3, counter2, counter),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 110, // Duplicado
                      height: 110, // Duplicado
                      color:  Color.fromARGB(255, counter, counter2, counter4),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      width: 110, // Duplicado
                      height: 110, // Duplicado
                      color:  Color.fromARGB(255, counter3, counter, counter4),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 110, // Duplicado
                      height: 110, // Duplicado
                      color: Color.fromARGB(255, counter2, counter3, counter4),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.pan_tool_alt_rounded),
        onPressed: () {
          print(counter);
          setState(() {
            counter = Random().nextInt(256);
            counter2 = Random().nextInt(256);
            counter3 = Random().nextInt(256);
            counter4 = Random().nextInt(256);
          });
        },
      ),
    );
  }
}
