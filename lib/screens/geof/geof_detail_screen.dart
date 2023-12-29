// geof_detail_screen.dart

import 'package:flutter/material.dart';
import '../../models/geof/geof_cal.dart';

class GeofDetailScreen extends StatelessWidget {
  final GeofCal kalibrasigeof;

  const GeofDetailScreen({super.key, required this.kalibrasigeof});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kalibrasigeof.namaAlat),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              kalibrasigeof.gambarAlat,
              height: 100,
            ),
            const SizedBox(height: 16),
            const Text('Cara Kalibrasi:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Expanded(
              child: ListView.builder(
                itemCount: kalibrasigeof.caraKalibrasi.length,
                itemBuilder: (context, index) {
                  final step = kalibrasigeof.caraKalibrasi[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(step['judul'] ?? ''),
                      Text(step['isi'] ?? ''),
                      const SizedBox(height: 10),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
