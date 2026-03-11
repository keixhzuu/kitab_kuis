import 'package:flutter/material.dart';
import '../models/movie_model.dart';


List<MovieModel> bookmarkedMovies = [];

class MovieDetailPage extends StatefulWidget {
  final MovieModel movie;
  const MovieDetailPage({super.key, required this.movie});

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  late bool isBookmarked;

  @override
  void initState() {
    super.initState();
    isBookmarked = bookmarkedMovies.contains(widget.movie);
  }

  void toggleBookmark() {
    setState(() {
      if (isBookmarked) {
        bookmarkedMovies.remove(widget.movie);
        isBookmarked = false;
      } else {
        bookmarkedMovies.add(widget.movie);
        isBookmarked = true;
      }
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(isBookmarked 
            ? '${widget.movie.title} ditambahkan ke daftar' 
            : '${widget.movie.title} dihapus dari daftar'),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              widget.movie.imgUrl,
              width: double.infinity,
              height: 400,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => 
                Container(height: 400, color: Colors.grey, child: Center(child: Icon(Icons.broken_image, size: 50))),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          '${widget.movie.title} (${widget.movie.year})',
                          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          isBookmarked ? Icons.bookmark : Icons.bookmark_add_outlined,
                          color: isBookmarked ? Colors.amber : Colors.grey,
                          size: 32,
                        ),
                        onPressed: toggleBookmark,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '⭐ ${widget.movie.rating}/10', 
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.amber),
                  ),
                  const SizedBox(height: 16),
                  Text('Genre\t\t\t\t: ${widget.movie.genre}', style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 4),
                  Text('Directed by\t: ${widget.movie.director}', style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 4),
                  Text('Casts\t\t\t\t\t: ${widget.movie.casts.join(", ")}', style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 24),
                  const Text('Synopsis', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(
                    widget.movie.synopsis, 
                    style: const TextStyle(fontSize: 16, height: 1.5),
                    textAlign: TextAlign.justify,
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