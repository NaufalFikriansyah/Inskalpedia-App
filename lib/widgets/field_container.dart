import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/field.dart';

class FieldContainer extends StatelessWidget{
  final Field field;
  const FieldContainer({Key? key, required this.field}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => InstrumentsScreen(
      title: field.name,
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
              field.thumbnail,
              height: 60,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(field.name)],
          ))
        ],
      ),
      ),
    );
  }
}