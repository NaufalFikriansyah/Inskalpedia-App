import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../models/klimat/klim_cal.dart';
import '../../screens/detail_screen.dart';

class KlimInstrumentsContainer extends StatelessWidget{
  final KlimCal kalibrasiklim;
  const KlimInstrumentsContainer({Key? key, required this.kalibrasiklim}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(
        title: kalibrasiklim.namaAlat,
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
                kalibrasiklim.thumbnail,
                height: 60,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(kalibrasiklim.namaAlat)],
            ))
          ],
        ),
      ),
    );
  }
}