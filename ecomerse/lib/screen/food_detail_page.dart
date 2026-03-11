import 'package:flutter/material.dart';
import '../models/food_list.dart';

class FoodDetailPage extends StatefulWidget {
  final Food food;
  const FoodDetailPage({super.key, required this.food});

  @override
  State<FoodDetailPage> createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  int quantity = 1;
  int displayedTotal = 0;

  @override
  void initState() {
    super.initState();
    displayedTotal = widget.food.price;
  }

  void _processPesan() {
    setState(() {
      displayedTotal = widget.food.price * quantity;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(
      'Pesanan Di-modifikasi!. Total: Rp $displayedTotal, pastikan pesanan sudah benar sebelum checkout')),
    );
  }

  void _processCheckout() {
    setState(() {
      displayedTotal = widget.food.price * quantity;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Pesanan dikonfirmasi. Total: Rp $displayedTotal')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Makanan'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              widget.food.image,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  Container(height: 250, color: const Color.fromARGB(255, 161, 160, 160), child: const Center(child: Icon(Icons.broken_image, size: 50))),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.food.name,
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text('Kategori    : ${widget.food.category}', style: const TextStyle(fontSize: 16)),
                  Text('Harga       : Rp ${widget.food.price}', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 74, 179, 77))),
                  Text('Kalori      : ${widget.food.calories} kcal', style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 8),
                  Text('Bahan       : ${widget.food.ingredients.join(", ")}', style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 16),
                  const Text('Deskripsi:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(
                    widget.food.description,
                    style: const TextStyle(fontSize: 16, height: 1.5),
                    textAlign: TextAlign.justify,
                  ),
                  
                  const SizedBox(height: 30),
                  const Divider(thickness: 2),
                  const SizedBox(height: 10),
                  
                  const Text('Jumlah Pesan', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove_circle, color: Color.fromARGB(255, 0, 0, 0)),
                            onPressed: () {
                              if (quantity > 1) {
                                setState(() {
                                  quantity--;
                                });
                                _processPesan();
                              }
                            },
                          ),
                          Text(
                            '$quantity',
                            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            icon: const Icon(Icons.add_circle, color: Color.fromARGB(255, 0, 0, 0)),
                            onPressed: () {
                              setState(() {
                                quantity++;
                              });
                              _processPesan();
                            },
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: _processCheckout,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 255, 0, 0),
                          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: const Text('Checkout', style: TextStyle(fontSize: 16)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 92, 167, 221),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Harga Total: Rp $displayedTotal',
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 0, 0)),
                    ),
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