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
  MetCal(thumbnail: 'assets/icons/meteo.png', namaAlat: "AWOS", merkAlat: "AllWeather", tipeAlat: "Kategori III"),
  MetCal(thumbnail: 'assets/icons/meteo.png', namaAlat: "AWS", merkAlat: "Vaisala", tipeAlat: "-"),
  MetCal(thumbnail: 'assets/icons/meteo.png', namaAlat: "ARG", merkAlat: "Vaisala", tipeAlat: "-"),
];