class KlimCal{
  String thumbnail;
  String namaAlat;
  String merkAlat;
  String tipeAlat;

  KlimCal({
    required this.thumbnail,
    required this.namaAlat,
    required this.merkAlat,
    required this.tipeAlat,
  });
}

List<KlimCal> kalibrasiklim = [
  KlimCal(thumbnail: 'assets/icons/klimat.png', namaAlat: "Alat A", merkAlat: "Merk A", tipeAlat: "Tipe A"),
  KlimCal(thumbnail: 'assets/icons/klimat.png', namaAlat: "Alat B", merkAlat: "Merk B", tipeAlat: "Tipe B"),
];