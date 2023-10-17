import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget{
  final String title;
  const DetailScreen({Key? key, required this.title}) : super(key:key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}