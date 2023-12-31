import 'package:flutter/material.dart';
import 'package:inskalpedia/screens/home_screen.dart';
//https://www.youtube.com/watch?v=yNrmluocNFw&ab_channel=DevWheels
//https://www.youtube.com/watch?v=I-WVHYiJjT4&ab_channel=FlutterMapp

//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

//expanded panel di detail_card belum sempurna, data di geof_guralph belum terbaca
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inskalpedia',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          bodyLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          bodyMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          displayMedium: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
