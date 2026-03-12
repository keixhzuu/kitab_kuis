import 'package:flutter/material.dart';
import '../models/news_model.dart';
import 'detail_page.dart';
import 'profile_page.dart';
import 'login_page.dart';

class HomePage extends StatefulWidget {
  final String username;
  const HomePage({super.key, required this.username});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News App"),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(username: widget.username),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: newsList.length,
        itemBuilder: (context, index) {
          final news = newsList[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Navigasi ke Detail Page saat gambar diklik
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailPage(news: news)),
                    ).then((value) => setState(() {}));
                  },
                  child: Image.network(
                    news.imageUrl,
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        news.title,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(height: 10),
                      
                      // --- BAGIAN TOMBOL LIKE & DISLIKE ---
                      Row(
                        children: [
                          // Tombol Like
                          IconButton(
                            icon: const Icon(Icons.favorite, color: Colors.red),
                            onPressed: () {
                              setState(() {
                                news.likes++; // Tambah like
                              });
                            },
                          ),
                          Text("${news.likes}"),
                          
                          const SizedBox(width: 20), // Jarak antar tombol
                          
                          // TOMBOL DISLIKE (Warna Abu-abu, Tidak Merah)
                          IconButton(
                            icon: const Icon(Icons.thumb_down_alt_outlined, color: Colors.grey),
                            onPressed: () {
                              setState(() {
                                // Logika: Kurangi like hanya jika angka > 0
                                if (news.likes > 0) {
                                  news.likes--;
                                }
                              });
                            },
                          ),
                          const Text("Dislike", style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
