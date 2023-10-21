class GeofGuralph{
  String judul;
  String isi;
  bool isExpanded;

  GeofGuralph({
    required this.judul,
    required this.isi,
    this.isExpanded = false,

  });
}

List<GeofGuralph> kalibrasigeofGuralph = [
  GeofGuralph(judul: 'Pastikan Semua Alat Tersedia', isi: 'Pastikan ada: Digitizer Guralph, kabel ethernet, kabel GPS, kabel power, power supply 12VDC untuk digitizer guralph, kabel sensor, converter + adaptr 12VDC, inverter'),
  GeofGuralph(judul: 'Sambungkan Laptop dengan Ethernet', isi: 'Sambungkan laptop dengan digitizer seismograph yang terinstall pada site dengan mengatur IP ethernet laptop dengan digitizer'),
  GeofGuralph(judul: 'ScreenShot Status Sensor dan Waveform-nya', isi: ''),
  GeofGuralph(judul: 'Pastikan Massa Seismometer', isi: 'Apabila tidak centre maka lakukan centering mass, pastikan screenshot keadaan awal mass sebelum centering dan sesudah'),
  GeofGuralph(judul: 'Shutdown Digitizer', isi: ''),
  GeofGuralph(judul: 'Lepas Kabel', isi: 'Jika digitizer sudah mati, lepas kabel sensor dan kabel power'),
  //lanjut SOP Kalibrasi Guralph
];