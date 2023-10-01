import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}) : super(key:key);

  @override
  State<StatefulWidget> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
         body: Column(
           children: const [
             AppBar()
           ],
         ),
      ),
    );
  }
}
class AppBar extends StatelessWidget{
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
            Color(0x00ffa13d),
            Color(0x00ffdcb8),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight
        )
      ),
    );
  }}