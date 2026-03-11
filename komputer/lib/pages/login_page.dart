import 'package:flutter/material.dart';
import 'product_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _handleLogin() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Logika: Username = NIM, Password = kuis_NIM
    if (password == "kuis_123230005" && username == "123230005") {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Login berhasil!")), // [cite: 33]
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ProductPage()), // [cite: 33]
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Login gagal!")), // [cite: 34]
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png', height: 100), // Logo
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: "Username"),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _handleLogin, child: Text("Login")),
          ],
        ),
      ),
    );
  }
}
