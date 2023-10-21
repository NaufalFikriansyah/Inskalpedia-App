class Field {
  String thumbnail;
  String name;
  Field({
    required this.thumbnail, required this.name,});
}

List<Field> fields = [
  Field(thumbnail: 'assets/icons/meteo.png', name: 'Meteorologi'),
  Field(thumbnail: 'assets/icons/klimat.png', name: 'Klimatologi'),
  Field(thumbnail: 'assets/icons/geof.png', name: 'Geofisika'),
  Field(thumbnail: 'assets/icons/ins.png', name: 'Instrumentasi'),
];