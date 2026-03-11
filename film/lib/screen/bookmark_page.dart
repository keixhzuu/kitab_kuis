import 'package:flutter/material.dart';
import 'movie_detail_page.dart';

class BookmarkPage extends StatefulWidget {
  const BookmarkPage({super.key});

  @override
  State<BookmarkPage> createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mamah aku elitis😹')),
      body: bookmarkedMovies.isEmpty
          ? const Center(
              child: Text(
                'Belum ada film yang disimpan.',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            )
          : ListView.builder(
              itemCount: bookmarkedMovies.length,
              itemBuilder: (context, index) {
                final movie = bookmarkedMovies[index];
                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: ListTile(
                    leading: Image.network(
                      movie.imgUrl,
                      width: 50,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.broken_image),
                    ),
                    title: Text(
                      movie.title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('${movie.year} • ⭐ ${movie.rating}'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MovieDetailPage(movie: movie),
                        ),
                      ).then((_) {
                        setState(() {});
                      });
                    },
                  ),
                );
              },
            ),
    );
  }
}
