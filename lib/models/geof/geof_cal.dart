class GeofCal{
  String thumbnail;
  String namaAlat;
  String merkAlat;
  String tipeAlat;

  GeofCal({
    required this.thumbnail,
    required this.namaAlat,
    required this.merkAlat,
    required this.tipeAlat,
});
}

List<GeofCal> kalibrasigeof = [
  GeofCal(thumbnail: 'assets/icons/geof.png', namaAlat: "Digitizer", merkAlat: "Taurus", tipeAlat: "-"),
  GeofCal(thumbnail: 'assets/icons/geof.png', namaAlat: "Digitizer", merkAlat: "Centaur", tipeAlat: "-"),
  GeofCal(thumbnail: 'assets/icons/geof.png', namaAlat: "Digitizer", merkAlat: "Guralph", tipeAlat: "-"),
];