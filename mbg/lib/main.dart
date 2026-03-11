import 'package:flutter/material.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kuis Praktikum Mobile', //opsional
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3:
            true, // Standar Flutter terbaru untuk tampilan yang lebih modern
      ),
      home: const LoginPage(),
    );
  }
}
