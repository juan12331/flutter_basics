import 'package:flutter/material.dart';
import 'pages/tela.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const tela(),
        // '/login': (context) => const Login(),
        // '/cadastro': (context) => const Cadastro(),
        // '/home': (context) => const Home()
      },
    );
  }
}