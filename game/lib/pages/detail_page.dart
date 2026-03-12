import 'package:flutter/material.dart';
import '../models/game_data.dart';

class DetailPage extends StatelessWidget {
  final GameStore game;
  const DetailPage({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(game.name)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(game.imageUrls[0]),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(game.name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Text("Release: ${game.releaseDate}"),
                  Text("Price: ${game.price}"),
                  SizedBox(height: 10),
                  Text(game.about),
                  SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Berhasil download"))
                        );
                      },
                      child: Text("beli aja deh"),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}