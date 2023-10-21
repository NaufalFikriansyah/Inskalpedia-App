class MetAwosAllweather{
  String judul;
  String isi;
  bool isExpanded;

  MetAwosAllweather({
    required this.judul,
    required this.isi,
    this.isExpanded = false,

  });
}

List<MetAwosAllweather> kalibrasiAWOSAllWeatherKatIII = [
  MetAwosAllweather(judul: 'Step Pertama', isi: 'Isi dari step pertama'),
  MetAwosAllweather(judul: 'Step Kedua', isi: 'Isi dari step kedua'),
  MetAwosAllweather(judul: 'Step Ketiga', isi: 'Isi dari step ketiga'),
];