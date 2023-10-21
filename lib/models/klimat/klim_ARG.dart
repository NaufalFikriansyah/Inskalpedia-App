class KlimARG{
  String judul;
  String isi;
  bool isExpanded;

  KlimARG({
    required this.judul,
    required this.isi,
    this.isExpanded = false,

  });
}

List<KlimARG> kalibrasiKlimARG = [
  KlimARG(judul: 'Step Pertama', isi: 'Isi dari step pertama'),
  KlimARG(judul: 'Step Kedua', isi: 'Isi dari step kedua '),

];