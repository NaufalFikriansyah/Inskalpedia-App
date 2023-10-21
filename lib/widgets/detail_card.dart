
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/geof/geof_guralph.dart';

class DetailCard extends StatefulWidget{
  const DetailCard({Key? key}):super(key:key);
  @override
  State<DetailCard> createState() => _DetailCardState();
}

class _DetailCardState extends State<DetailCard> {
  final List<GeofGuralph> _list = List<GeofGuralph>.generate(kalibrasigeofGuralph.length, //length of data
  (int index){final GeofGuralph geofGuralph = kalibrasigeofGuralph[index];
    //if alat A return alat A. variable == geof guralph
  return GeofGuralph(
    judul: geofGuralph.judul,
    isi: geofGuralph.isi, //isi
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
                title: Text(geofGuralph.judul, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),);},
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