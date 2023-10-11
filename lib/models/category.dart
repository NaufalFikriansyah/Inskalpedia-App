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
  //Tambah Kategoti Jarkom 0:35
];