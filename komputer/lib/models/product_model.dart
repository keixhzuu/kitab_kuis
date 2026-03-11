class Product {
  final String name;
  final String price;
  final double rating;
  final String description;
  final String image;
  final String category;
  bool isFavorite;

  Product({
    required this.name,
    required this.price,
    required this.rating,
    required this.description,
    required this.image,
    required this.category,
    this.isFavorite = false,
  });
}

// Dummy Data
List<Product> listProduct = [
  Product(
    name: "Wireless Mouse",
    price: "IDR 150000",
    rating: 4.5,
    description: "Wireless mouse ergonomis dengan koneksi 2.4GHz...",
    // image:
    //     "https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Logitech_M100_optical_mouse.jpg/640px-Logitech_M100_optical_mouse.jpg",
    image: "assets/images/mouse.png", //kalo pake gambar
    category: "Electronics",
  ),
  Product(
    name: "Mechanical Keyboard",
    price: "IDR 450000",
    rating: 4.7,
    description: "Keyboard mekanik dengan switch biru...",
    // image:
    //     "https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/g-pro-keyboard/pro-clicky-keyboard-gallery-1.png",
    image: "assets/images/image.png",
    category: "Electronics",
  ),
];
