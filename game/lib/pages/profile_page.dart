import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String username;
  const ProfilePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(radius: 50, child: Icon(Icons.person, size: 50)),
            SizedBox(height: 20),
            Text("Username: $username", style: TextStyle(fontSize: 18)),
            Text("Nama: melon di kulkas", style: TextStyle(fontSize: 18)),
            Text("NIM: 12322XXXX", style: TextStyle(fontSize: 18)),
            Text("Hobi: Ngadem", style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}