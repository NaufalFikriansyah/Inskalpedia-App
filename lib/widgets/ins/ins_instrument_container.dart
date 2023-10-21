import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inskalpedia/models/geof/geof_cal.dart';
import 'package:inskalpedia/models/ins/ins_cal.dart';

import '../../screens/detail_screen.dart';

class InsInstrumentsContainer extends StatelessWidget{
  final InsCal kalibrasiIns;
  const InsInstrumentsContainer({Key? key, required this.kalibrasiIns}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(
        title: kalibrasiIns.namaAlat,
      ))),
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
                kalibrasiIns.thumbnail,
                height: 60,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(kalibrasiIns.namaAlat)],
            ))
          ],
        ),
      ),
    );
  }
}