import 'package:flutter/material.dart';
import '../models/news_model.dart';

class DetailPage extends StatefulWidget {
  final News news;
  const DetailPage({super.key, required this.news});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  void _toggleLike() {
    setState(() {
      if (widget.news.isLiked) {
        widget.news.likes--;
      } else {
        widget.news.likes++;
      }
      widget.news.isLiked = !widget.news.isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News Detail")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(widget.news.imageUrl, width: double.infinity, height: 250, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.news.title, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text(widget.news.content),
                SizedBox(height: 20),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        widget.news.isLiked ? Icons.favorite : Icons.favorite_border,
                        color: widget.news.isLiked ? Colors.red : Colors.grey,
                      ),
                      onPressed: _toggleLike,
                    ),
                    Text("${widget.news.likes} likes"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}