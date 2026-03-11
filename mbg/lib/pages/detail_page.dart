import 'package:flutter/material.dart';
import '../models/menu_model.dart';

class DetailPage extends StatefulWidget {
  final MenuModel menu;
  const DetailPage({super.key, required this.menu});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final _reviewController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Menu"),
      ), // Tombol back otomatis ada di AppBar
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              widget.menu.image, // Mengambil data dari model yang dikirim
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.menu.name,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text("Total Likes: ${widget.menu.totalLike}"),
                  Divider(),
                  Text(widget.menu.desc),
                  SizedBox(height: 20),
                  Text(
                    "Review Terakhir:",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.green.withValues(alpha: 0.1),
                    child: Text(widget.menu.lastReview),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: _reviewController,
                    decoration: InputDecoration(
                      hintText: "Tulis Review Baru...",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widget.menu.lastReview = _reviewController
                            .text; // Bonus: Update review [cite: 119]
                        _reviewController.clear();
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                    ),
                    child: Text("Update Review"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
