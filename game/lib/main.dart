import 'package:flutter/material.dart';
import 'pages/login_page.dart'; // Import halaman login [cite: 35]

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug
      title: 'Kuis Mobile IF-E',
      theme: ThemeData(
        // Kamu bisa menyesuaikan warna utama di sini 
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      // Halaman pertama yang dibuka adalah LoginPage [cite: 35, 65]
      home: const LoginPage(), 
    );
  }
}