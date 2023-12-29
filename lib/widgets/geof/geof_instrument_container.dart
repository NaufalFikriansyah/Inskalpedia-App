import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../models/geof/geof_cal.dart';
import '../../screens/detail_screen.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class GeofInstrumentsContainer extends StatefulWidget {

  const GeofInstrumentsContainer({super.key, required GeofCal kalibrasigeof});

  @override
  _GeofInstrumentsContainerState createState() => _GeofInstrumentsContainerState();
}

class _GeofInstrumentsContainerState extends State<GeofInstrumentsContainer> {
  late GeofCal kalibrasigeof;

  @override
  void initState() {
    super.initState();
    fetchPeralatan();
  }

  void fetchPeralatan() async {
    const url = 'https://bbmkg5.bmkg.go.id/SiMace-pub/peralatan.json';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    var peralatanList = json["geofisika"];

    // Assuming you want the first item in the list
    var firstPeralatan = peralatanList[0];
    setState(() {
      kalibrasigeof = GeofCal.fromJson(firstPeralatan);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (kalibrasigeof == null) {
      // You might want to return a loading indicator or an empty container
      return Container();
    }

    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailScreen(
            title: kalibrasigeof.namaAlat, // Assuming title property in DetailScreen accepts GeofCal instance
          ),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                kalibrasigeof.gambarAlat, // Replace with the actual property from GeofCal
                height: 60,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(kalibrasigeof.namaAlat), // Replace with the actual property from GeofCal
                  Text(kalibrasigeof.tipeAlat), // Replace with the actual property from GeofCal
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}