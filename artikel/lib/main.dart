import 'package:flutter/material.dart';
import 'pages/login_page.dart'; // Mengimpor file login dari folder pages 

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug
      title: 'News App',
      theme: ThemeData(
        primarySwatch: Colors.green, // Menyesuaikan tema warna tombol di soal 
        useMaterial3: true,
      ),
      // Mengarahkan tampilan awal ke LoginPage 
      home: const LoginPage(), 
    );
  }
}