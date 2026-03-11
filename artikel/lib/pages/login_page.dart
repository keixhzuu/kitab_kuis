import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://upload.wikimedia.org/wikipedia/id/0/0d/Logo_Universitas_Pembangunan_Nasional_Veteran_Yogyakarta.png",
              height: 100,
            ),
            const SizedBox(height: 20),
            const Text(
              "Login",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: "Username",
                prefixIcon: Icon(Icons.person),
              ),
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
                // Menghilangkan spasi tidak sengaja dengan .trim()
                if (_usernameController.text.trim() == "melon" &&
                    _passwordController.text == "123") {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          HomePage(username: _usernameController.text),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Username atau Password Salah!"),
                    ),
                  );
                }
              },
              child: const Text("Login", style: TextStyle(color: Colors.white)),
            ),
            // kalo mau bebas username nya
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Colors.green,
            //     minimumSize: Size(double.infinity, 50),
            //   ),

            //   onPressed: () {
            //     Navigator.pushReplacement(
            //       context,

            //       MaterialPageRoute(
            //         builder: (context) =>
            //             HomePage(username: _usernameController.text),
            //       ),
            //     );
            //   },

            //   child: Text("Login", style: TextStyle(color: Colors.white)),
            // ),
          ],
        ),
      ),
    );
  }
}
