import 'package:flutter/material.dart';
import '../models/news_model.dart';
import 'detail_page.dart';
import 'profile_page.dart';
import 'login_page.dart';

//kalo mau di homepage keitung pake stateful
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
        title: Text("News App"),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
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
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
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
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Image.network(
                news.imageUrl,
                height: 150,
                fit: BoxFit.cover,
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    news.title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Row(
                    children: [
                      Icon(Icons.favorite, size: 16, color: Colors.grey),
                      Text(" ${news.likes} likes"),
                    ],
                  ),
                ],
              ),
              onTap: () {
                //ini kalo pake stateless
                // Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(news: news)));
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(news: news),
                  ),
                ).then((value) {
                  // Fungsi ini berjalan saat kamu kembali (pop) dari DetailPage
                  setState(() {
                    // Refresh UI untuk mengambil angka likes terbaru dari newsList
                  });
                });
              },
            ),
          );
        },
      ),
    );
  }
}
