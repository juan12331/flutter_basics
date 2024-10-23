import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text(
            "home page",
             style:TextStyle(
              fontSize: 25.5,
              color: Colors.white
             ) ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () {
        setState(() {
          counter++;
        }
        );
      }),
      body: Center(
        child: GestureDetector(
          child: Text(
            'contador ${counter}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          onTap: () {
            print('click ${counter}');
              Navigator.pushNamed(context, "/login");
            
          },
        ),
      ),
    );
  }
}
