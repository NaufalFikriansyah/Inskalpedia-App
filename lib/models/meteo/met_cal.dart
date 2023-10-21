class MetCal{
  String thumbnail;
  String namaAlat;
  String merkAlat;
  String tipeAlat;

  MetCal({
    required this.thumbnail,
    required this.namaAlat,
    required this.merkAlat,
    required this.tipeAlat,
  });
}

List<MetCal> kalibrasiMeteo = [
  MetCal(thumbnail: 'assets/icons/meteo.png', namaAlat: "Alat A", merkAlat: "Merk A", tipeAlat: "Tipe A"),
  MetCal(thumbnail: 'assets/icons/meteo.png', namaAlat: "Alat B", merkAlat: "Merk B", tipeAlat: "Tipe B"),
];