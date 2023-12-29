
class GeofCal {
  final int id;
  final String namaAlat;
  final String tipeAlat;
  final String gambarAlat; // Assuming this is the property for the image path
  final List<Map<String, String>> caraKalibrasi;

  GeofCal({
    required this.id,
    required this.namaAlat,
    required this.tipeAlat,
    required this.gambarAlat,
    required this.caraKalibrasi,
  });

  factory GeofCal.fromJson(Map<String, dynamic> json) {
    return GeofCal(
      id: json['id'],
      namaAlat: json['nama_alat'],
      tipeAlat: json['tipe_alat'],
      gambarAlat: json['gambar_alat'],
      caraKalibrasi: List<Map<String, String>>.from(json['cara_kalibrasi']),
    );
  }

}



/*
class GeofCal{
  void fetchPeralatan() async {
    //print('fetchperalatan called');
    const url = 'https://bbmkg5.bmkg.go.id/SiMace-pub/peralatan.json';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    var peralatan = json["geofisika"];
    /*
    setState((){
      peralatan = json["geofisika"];
    });
    print("fetchperalatan complete");*/
  //}
}
/*
List<GeofCal> kalibrasigeof = [
  GeofCal(thumbnail: 'assets/icons/geof.png', namaAlat: "Digitizer Taurus", merkAlat: "Taurus", tipeAlat: "-"),
  GeofCal(thumbnail: 'assets/icons/geof.png', namaAlat: "Digitizer Centaur", merkAlat: "Centaur", tipeAlat: "-"),
  GeofCal(thumbnail: 'assets/icons/geof.png', namaAlat: "Digitizer Guralph", merkAlat: "Guralph", tipeAlat: "-"),
];*/*/