// geof_instruments_screen.dart
// geof_instruments_screen.dart

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../models/geof/geof_cal.dart';
import '../../widgets/geof/geof_instrument_container.dart';
import 'geof_detail_screen.dart'; // Import GeofDetailScreen

class GeofInstrumentsScreen extends StatefulWidget {
  const GeofInstrumentsScreen({Key? key, required String title}) : super(key: key);

  @override
  State<GeofInstrumentsScreen> createState() => _GeofInstrumentsScreenState();
}

class _GeofInstrumentsScreenState extends State<GeofInstrumentsScreen> {
  List<GeofCal> instruments = [];

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
    print('Response body: $body');
    final json = jsonDecode(body);
    print('Parsed JSON: $json');
    var peralatanList = json["geofisika"];
    print('Peralatan list: $peralatanList');

    List<GeofCal> fetchedInstruments = peralatanList
        .map((peralatanJson) => GeofCal.fromJson(peralatanJson))
        .toList();

    setState(() {
      instruments = fetchedInstruments;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Geof Instruments'),
      ),
      body: ListView.builder(
        itemCount: instruments.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GeofDetailScreen(kalibrasigeof: instruments[index]),
                ),
              );
            },
            child: GeofInstrumentsContainer(
              kalibrasigeof: instruments[index],
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: GeofInstrumentsScreen(title: 'Geofisika',),
  ));
}





/*
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../models/geof/geof_cal.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/geof/geof_instrument_container.dart';
class GeofInstrumentsScreen extends StatefulWidget {
  const GeofInstrumentsScreen({Key? key}) : super(key: key);

  @override
  State<GeofInstrumentsScreen> createState() => _GeofInstrumentsScreenState();
}

class _GeofInstrumentsScreenState extends State<GeofInstrumentsScreen> {
  late List<GeofCal> kalibrasigeof; // Ensure that kalibrasigeof is defined as a list

  @override
  void initState() {
    super.initState();
    //kalibrasigeof = []; // Initialize the list
    fetchPeralatan();
  }

  void fetchPeralatan() async {
    // Your data fetching logic here, similar to the previous examples
    // Make sure to update the 'kalibrasigeof' list with the fetched data
    // Example:
    // kalibrasigeof = await fetchData(); // Implement fetchData() as needed

    // For demonstration, let's assume kalibrasigeof is a static list
    kalibrasigeof = [GeofCal(id: 0, namaAlat: 'Guralph', tipeAlat: '', gambarAlat: 'assets/icons/geof.png', caraKalibrasi: []),];

    // Set the state to trigger a rebuild with the updated data
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntrinsicHeight(
                  child: Stack(
                    children: [
                      Align(
                        child: Text(
                          'Geofisika',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                      Positioned(
                        left: 0,
                        child: CustomIconButton(
                          height: 35,
                          width: 35,
                          onTap: () => Navigator.pop(context),
                          child: const Icon(Icons.arrow_back),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (_, index) {
                      return GeofInstrumentsContainer(
                        kalibrasigeof: kalibrasigeof[index],
                      );
                    },
                    separatorBuilder: (context, _) {
                      return const SizedBox(height: 10);
                    },
                    itemCount: kalibrasigeof.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




*/