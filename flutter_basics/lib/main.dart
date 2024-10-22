import 'package:flutter/material.dart';
import 'pages/tela.dart';
import 'pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/login': (context) => const tela(title: 'juan'),
        '/': (context) => const Home(),
        // '/cadastro': (context) => const Cadastro(),
        // '/home': (context) => const Home()
      },
    );
  }
}
