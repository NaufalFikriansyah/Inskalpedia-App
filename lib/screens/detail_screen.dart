import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inskalpedia/widgets/custom_icon_button.dart';
import 'package:inskalpedia/widgets/detail_card.dart';

class DetailScreen extends StatefulWidget{
  final String title;
  const DetailScreen({Key? key, required this.title}) : super(key:key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>{
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [IntrinsicHeight(
              child: Stack(
                children: [
                  Align(
                    child: Text(
                      'Digitizer Guralph',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                  Positioned(
                      left: 0,
                      child: CustomIconButton(
                        height: 35,
                        width: 35,
                        onTap: () => Navigator.pop(context),
                        child: const Icon(Icons.arrow_back),
                      )) //14.07
                ],
              ),
            ),
              const DetailCard(),
            ],
          ),
        ),

        ),
      ),
    );
  }
}