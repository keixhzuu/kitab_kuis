import 'package:flutter/material.dart';
import 'package:komputer/models/product_model.dart';
import 'detail_page.dart';
import 'login_page.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products List Page"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout), // Tombol logout
            onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: listProduct.length,
        itemBuilder: (context, index) {
          final product = listProduct[index];
          return Card(
            child: Column(
              children: [
                // TAMBAHKAN BARIS INI UNTUK MENAMPILKAN GAMBAR [cite: 36, 46]
                Image.asset(
                  product.image, // Sekarang mengambil path dari model
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                // Image.network(
                //   product.image,
                //   height: 200,
                //   width: double.infinity,
                //   fit: BoxFit
                //       .cover, // Ini penting agar gambar memenuhi area kotak
                //   errorBuilder: (context, error, stackTrace) {
                //     return Container(
                //       height: 200,
                //       color: Colors.grey[200],
                //       child: const Icon(Icons.image_not_supported, size: 50),
                //     );
                //   },
                // ),
                ListTile(
                  title: Text(product.name), // [cite: 37, 53]
                  subtitle: Text(
                    "${product.price} | Rating: ${product.rating}",
                  ), // [cite: 37, 54, 55]
                  trailing: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(product: product),
                        ),
                      ).then((_) => setState(() {}));
                    },
                    child: const Text("More"), // [cite: 56]
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
