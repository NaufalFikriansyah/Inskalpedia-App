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
  MetAwosAllweather(judul: 'Pastikan Semua Alat Tersedia', isi: 'Pastikan ada: Digitizer Guralph, kabel ethernet, kabel GPS, kabel power, power supply 12VDC untuk digitizer guralph, kabel sensor, converter + adaptr 12VDC, inverter'),
  MetAwosAllweather(judul: 'Sambungkan Laptop dengan Ethernet', isi: 'Sambungkan laptop dengan digitizer seismograph yang terinstall pada site dengan mengatur IP ethernet laptop dengan digitizer'),
  MetAwosAllweather(judul: 'ScreenShot Status Sensor dan Waveform-nya', isi: ''),
  MetAwosAllweather(judul: 'Pastikan Massa Seismometer', isi: 'Apabila tidak centre maka lakukan centering mass, pastikan screenshot keadaan awal mass sebelum centering dan sesudah'),
  MetAwosAllweather(judul: 'Shutdown Digitizer', isi: ''),
  MetAwosAllweather(judul: 'Lepas Kabel', isi: 'Jika digitizer sudah mati, lepas kabel sensor dan kabel power'),
  //lanjut SOP Kalibrasi Guralph
];