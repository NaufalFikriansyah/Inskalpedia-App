
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/geof_guralph.dart';


class DetailCard extends StatefulWidget{
  const DetailCard({Key? key}):super(key:key);

  @override
  State<DetailCard> createState() => _DetailCardState();
}

class _DetailCardState extends State<DetailCard> {
  final List<GeofGuralph> _list = List<GeofGuralph>.generate(10,
  (int index){
    return GeofGuralph(
    judul: '$index', isi: '$index',

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
        children: _list.map<ExpansionPanel>((GeofGuralph kalibrasigeofGuralph){
          return ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded){
              return ListTile(
                title: Text(kalibrasigeofGuralph.judul),);},
            body: ListTile(title: Text(kalibrasigeofGuralph.isi),),
          );
        }).toList(),
      ),
    );
  }}