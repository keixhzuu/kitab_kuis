import 'package:flutter/material.dart';
import 'package:komputer/models/product_model.dart';

class DetailPage extends StatefulWidget {
  final Product product;
  // Gunakan const constructor
  const DetailPage({super.key, required this.product});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.name),
        actions: [
          IconButton(
            icon: Icon(
              widget.product.isFavorite
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: widget.product.isFavorite
                  ? Colors.red
                  : null, // Warna merah jika favorit
            ),
            onPressed: () {
              setState(() {
                widget.product.isFavorite = !widget.product.isFavorite;
              });
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        // Menggunakan scroll agar tidak overflow jika deskripsi panjang
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // MENAMPILKAN GAMBAR DARI ASET
            Image.asset(
              widget.product.image,
              width: double.infinity,
              height: 300,
              fit: BoxFit.contain, // Menyesuaikan agar gambar terlihat utuh
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nama Produk (Poin 40)
                  Text(
                    widget.product.name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Harga Produk (Poin 40)
                  Text(
                    widget.product.price,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.blueAccent,
                    ),
                  ),

                  // Rating (Poin 40)
                  Text("Rating: ${widget.product.rating}"),
                  const SizedBox(height: 8),

                  // Kategori (Poin 40)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(widget.product.category),
                  ),

                  const SizedBox(height: 16),

                  // Deskripsi Lengkap (Poin 40)
                  const Text(
                    "Description:",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(widget.product.description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
