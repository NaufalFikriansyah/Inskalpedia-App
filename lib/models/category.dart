class Category {
  String thumbnail;
  String name;
    Category({
    required this.thumbnail, required this.name,});
}

List<Category> categoryList = [
  Category(thumbnail: 'assets/icons/calibrationicon.png', name: 'Kalibrasi'),
  Category(thumbnail: 'assets/icons/maintananceicon.png', name: 'Perawatan'),
  Category(thumbnail: 'assets/icons/installicon.png', name: 'Instalasi'),
  Category(thumbnail: 'assets/icons/jarkomicon.png', name: 'Jaringan Komunikasi'),
];