import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:inskalpedia/screens/field_screen.dart';

import '../constants/size.dart';
import '../models/category.dart' as myCategory;

class CategoryCard extends StatelessWidget{
  final myCategory.Category categoryList;
  const CategoryCard({Key? key, required this.categoryList}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder:(context) => FieldScreen(categoryList: categoryList,))),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 4.0,
              spreadRadius: .05,
            )
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                categoryList.thumbnail,
                height: kCategoryCardImageSize,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(categoryList.name, textAlign: TextAlign.center,),
          ],
        ),
      ),
    );
  }
}