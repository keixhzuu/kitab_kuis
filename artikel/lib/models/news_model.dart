class News {
  final String title;
  final String imageUrl;
  final String content;
  int likes;
  bool isLiked;

  News({
    required this.title,
    required this.imageUrl,
    required this.content,
    required this.likes,
    this.isLiked = false,
  });
}

// Data dummy untuk kuis
List<News> newsList = [
  News(
    title: "SpaceX Meluncurkan Roket Terbaru",
    imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvkeGJ4uF4F6ddvHGKZkxE0nLWUIUWWXqnVA&s", // Ganti dengan URL gambar valid
    content: "SpaceX berhasil meluncurkan roket terbarunya dengan misi membawa satelit komunikasi ke orbit bumi. Peluncuran ini menandai pencapaian baru dalam eksplorasi ruang angkasa.",
    likes: 150,
  ),
  News(
    title: "Penemuan Teknologi AI Terbaru",
    imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQzr7k_7W3IGTt6fRRudxnr-ZXl6Mz94myxw&s",
    content: "Penemuan teknologi AI terbaru memungkinkan pemrosesan data lebih cepat dan efisien dibandingkan generasi sebelumnya.",
    likes: 200,
  ),
];