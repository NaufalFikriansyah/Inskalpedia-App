class InsAlat{
  String judul;
  String isi;
  bool isExpanded;

  InsAlat({
    required this.judul,
    required this.isi,
    this.isExpanded = false,

  });
}

List<InsAlat> kalibrasiInsAlat = [
  InsAlat(judul: 'Step Pertama', isi: 'Isi dari step pertama'),
  InsAlat(judul: 'Step Kedua', isi: 'Isi dari step kedua '),

];