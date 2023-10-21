import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../models/ins/ins_cal.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/ins/ins_instrument_container.dart';


class InsInstrumentsScreen extends StatefulWidget{
  final String title;
  const InsInstrumentsScreen({Key? key, required this.title}) : super(key:key);

  @override
  State<InsInstrumentsScreen> createState() => _InsInstrumentsScreenState();
}

class _InsInstrumentsScreenState extends State<InsInstrumentsScreen>{
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntrinsicHeight(
                  child: Stack(
                    children: [
                      Align(
                        child: Text(
                          'Instrumentasi',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                      Positioned(
                          left: 0,
                          child: CustomIconButton(
                              height: 35,
                              width: 35,
                              onTap: () => Navigator.pop(context),
                              child: const Icon(Icons.arrow_back)
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (_,index){return InsInstrumentsContainer( //11:35
                      kalibrasiIns: kalibrasiIns[index],
                    );},
                    separatorBuilder: (context,_){return const SizedBox(height: 10);},
                    itemCount: kalibrasiIns.length))
              ],
            ),
          ),
        ),
      ),

    );
  }

}