class MenuModel {
  String name;
  String image;
  String desc;
  int totalLike;
  String lastReview;

  MenuModel({
    required this.name,
    required this.image,
    required this.desc,
    required this.totalLike,
    required this.lastReview,
  });

  static final List<MenuModel> menuList = [
    MenuModel(
      name: "Paket MBG 1: Ayam Teriyaki & Sop",
      image:
          "https://images.unsplash.com/photo-1604908176997-125f25cc6f3d?auto=format&fit=crop&w=600&q=80",
      desc:
          "Nasi putih hangat, ayam teriyaki, sayur sop wortel buncis, dan 1 kotak susu UHT. Kaya protein untuk mendukung pertumbuhan anak.",
      totalLike: 342,
      lastReview:
          "Anak-anak sangat suka bumbu ayam teriyakinya. Porsi pas dan mengenyangkan!",
    ),
    MenuModel(
      name: "Paket MBG 2: Ikan Bakar & Kangkung",
      image:
          "https://images.unsplash.com/photo-1598514982205-f36b96d1e8d4?auto=format&fit=crop&w=600&q=80",
      desc:
          "Nasi putih, ikan bakar kecap (tanpa duri), tumis kangkung, dan buah pisang. Omega-3 tinggi untuk kecerdasan otak.",
      totalLike: 289,
      lastReview:
          "Ikannya lembut dan tidak amis sama sekali. Buah pisangnya manis.",
    ),
    MenuModel(
      name: "Paket MBG 3: Telur Balado & Bayam",
      image:
          "https://awsimages.detik.net.id/community/media/visual/2023/01/18/resep-telur-balado_43.jpeg?w=600&q=90",
      desc:
          "Nasi putih, telur balado (tidak pedas), sayur bening bayam jagung, dan 1 kotak susu UHT. Nutrisi seimbang yang mudah dicerna.",
      totalLike: 415,
      lastReview:
          "Sayur bayamnya segar dan kuahnya gurih. Telurnya favorit anak-anak.",
    ),
    MenuModel(
      name: "Paket MBG 4: Ayam Goreng & Capcay",
      image:
          "https://awsimages.detik.net.id/community/media/visual/2022/07/05/resep-capcay-goreng-ayam_43.jpeg?w=650",
      desc:
          "Nasi merah/putih, ayam goreng lengkuas, capcay sayur segar, dan buah jeruk. Penuh vitamin C dan serat.",
      totalLike: 512,
      lastReview:
          "Capcaynya warna-warni jadi anak-anak tertarik makan sayur. Jeruknya manis segar.",
    ),
    MenuModel(
      name: "Paket MBG 5: Semur Bola Daging",
      image:
          "https://images.unsplash.com/photo-1529042410759-befb1204b468?auto=format&fit=crop&w=600&q=80",
      desc:
          "Nasi putih, semur bola daging sapi cincang, tumis buncis tempe, dan buah melon. Tinggi zat besi untuk mencegah anemia.",
      totalLike: 478,
      lastReview:
          "Dagingnya sangat empuk, gampang dikunyah oleh anak SD kelas 1.",
    ),
    MenuModel(
      name: "Paket MBG 6: Nugget Tempe & Makaroni",
      image:
          "https://images.unsplash.com/photo-1626082927389-6cd097cdc6ec?auto=format&fit=crop&w=600&q=80",
      desc:
          "Nasi putih, nugget tempe sayur buatan sendiri (non-msg), sup makaroni sosis sapi, dan susu cokelat.",
      totalLike: 399,
      lastReview:
          "Inovasi nugget tempenya luar biasa, anak-anak tidak sadar sedang makan tempe dan sayur.",
    ),
    MenuModel(
      name: "Paket MBG 7: Nasi Goreng Sayur",
      image:
          "https://images.unsplash.com/photo-1603133872878-684f208fb84b?auto=format&fit=crop&w=600&q=80",
      desc:
          "Nasi goreng sayuran (wortel, kacang polong), telur dadar iris, tomat ceri, dan susu UHT vanila. Menu sarapan/makan siang praktis favorit.",
      totalLike: 620,
      lastReview:
          "Menu yang paling ditunggu-tunggu setiap hari Jumat! Rasanya gurih dan enak.",
    ),
  ];
}
