import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inskalpedia/screens/met_instrument_screen.dart';

import '../models/field.dart';
import '../screens/instruments_screen.dart';

class FieldContainer extends StatelessWidget{
  final Field field;
  const FieldContainer({Key? key, required this.field}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        switch (field.name){
          case "Meteorologi":
            Navigator.push(context, MaterialPageRoute(builder: (context) => MetInstrumentsScreen(title: field.name)));
            break;
          case "Klimatologi":
            Navigator.push(context, MaterialPageRoute(builder: (context) => InstrumentsScreen(title: field.name)));
            break;
          case "Geofisika":
            Navigator.push(context, MaterialPageRoute(builder: (context) => InstrumentsScreen(title: field.name)));
            break;
          case "Instrumentasi":
            Navigator.push(context, MaterialPageRoute(builder: (context) => InstrumentsScreen(title: field.name)));
            break;
        }
      },
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
              field.thumbnail,
              height: 60,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(field.name)],
          ))
        ],
      ),
      ),
    );
  }
}