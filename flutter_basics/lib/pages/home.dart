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
    return Container(
      child: Center(
        child: GestureDetector(
          child: Text(
            'contador ->${counter}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          onTap: () {
            print('click ${counter}');
            if (counter > 50) {
              counter = 0;
              Navigator.pushNamed(context, "/login");
            }
            setState(() {
              counter = counter + 1;
            });
          },
        ),
      ),
    );
  }
}
