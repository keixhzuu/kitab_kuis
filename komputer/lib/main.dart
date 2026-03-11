import 'package:flutter/material.dart';
import 'package:komputer/pages/login_page.dart'; // Import file login yang telah dibuat sebelumnya

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kuis Teknologi Mobile',
      theme: ThemeData(
        // Menggunakan warna biru
        primarySwatch: Colors.blue,
        useMaterial3:
            false, // Gunakan false jika ingin tampilan AppBar klasik seperti di soal
      ),
      home: LoginPage(),
    );
  }
}
