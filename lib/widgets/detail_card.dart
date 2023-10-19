
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/geof_guralph.dart';


class DetailCard extends StatefulWidget{
  const DetailCard({Key? key}):super(key:key);

  @override
  State<DetailCard> createState() => _DetailCardState();
}

class _DetailCardState extends State<DetailCard> {
  final List<GeofGuralph> _list = List<GeofGuralph>.generate(6, //ganti 6 sebagai counts data
  (int index){
    return GeofGuralph(
    judul: 'Pastikan Semua Alat Tersedia',
      isi: 'Pastikan ada: Digitizer Guralph, kabel ethernet, kabel GPS, kabel power, power supply 12VDC untuk digitizer guralph, kabel sensor, converter + adaptr 12VDC, inverter',
    );
  }
  );


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionPanelList(
        expansionCallback: (int index, bool isExpanded){
          setState(() {
            _list[index].isExpanded = !isExpanded;
          });
        },
        children: _list.map<ExpansionPanel>((GeofGuralph geofGuralph){
          return ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded){
              return ListTile(
                title: Text(geofGuralph.judul),);},
            body: ListTile(
              title: Text(geofGuralph.isi
              ),
            ),
            isExpanded: geofGuralph.isExpanded,
          );
        }).toList(),
      ),
    );
  }}