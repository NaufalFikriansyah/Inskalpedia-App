//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inskalpedia/models/category.dart';
import 'package:inskalpedia/widgets/search_field.dart';

import '../widgets/category_card.dart';


class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}) : super(key:key);

  @override
  State<StatefulWidget> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
         body: Column(
           children: [
             AppBar(),
             Body(),
           ],
         ),
      ),
    );
  }
}
class AppBar extends StatelessWidget{
  //2:37
  const AppBar({Key? key}): super(key:key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: LinearGradient(colors: [
            Color(0xff806ff2),
            Color(0xff1803b2),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight
        )
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Selamat Datang \ndi Inskalpedia',
              style: Theme.of(context).textTheme.titleLarge,),

            ],
          ),
          const SizedBox(height: 20,),
          const SearchTextField(),
        ],
      ),
    );
  }}

class Body extends StatelessWidget{
  //6:25
  const Body({Key? key}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: const EdgeInsets.only(top: 10, left: 10, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Pilih Kategori',
            style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: categoryList.length,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 20,
          mainAxisSpacing: 24,
        ),
          itemBuilder: (context, index){
          return CategoryCard(
            categoryList: categoryList[index],
          );
          },
        )
      ],
    );
  }

}