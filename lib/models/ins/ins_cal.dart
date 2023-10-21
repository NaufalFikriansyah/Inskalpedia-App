class InsCal{
  String thumbnail;
  String namaAlat;
  String merkAlat;
  String tipeAlat;

  InsCal({
    required this.thumbnail,
    required this.namaAlat,
    required this.merkAlat,
    required this.tipeAlat,
  });
}

List<InsCal> kalibrasiIns = [
  InsCal(thumbnail: 'assets/icons/ins.png', namaAlat: "Alat A", merkAlat: "Merk A", tipeAlat: "Tipe A"),
  InsCal(thumbnail: 'assets/icons/ins.png', namaAlat: "Alat B", merkAlat: "Merk B", tipeAlat: "Tipe B"),
  InsCal(thumbnail: 'assets/icons/ins.png', namaAlat: "Alat C", merkAlat: "Merk C", tipeAlat: "Tipe C"),
];