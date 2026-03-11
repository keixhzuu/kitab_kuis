import 'package:flutter/material.dart';
import '../models/movie_model.dart';
import 'movie_detail_page.dart'; 
import 'login_page.dart'; 
import 'bookmark_page.dart'; 

class MovieListPage extends StatelessWidget {
  const MovieListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Film "ELIT😹"'),
        automaticallyImplyLeading: false, 
        actions: [

          IconButton(
            icon: const Icon(Icons.bookmark),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BookmarkPage()),
              );
            },
          ),
         
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
         
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
                (route) => false,
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: movieList.length,
        itemBuilder: (context, index) {
          final movie = movieList[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            elevation: 3,
            child: ListTile(
              contentPadding: const EdgeInsets.all(10),
              leading: Image.network(
                movie.imgUrl,
                width: 60,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => 
                    const Icon(Icons.broken_image, size: 60),
              ),
              title: Text(
                movie.title, 
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text('${movie.year} • ${movie.genre}\n⭐ ${movie.rating}/10'),
              ),
              isThreeLine: true,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MovieDetailPage(movie: movie),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}