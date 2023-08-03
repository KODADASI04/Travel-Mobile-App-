import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_mobile_app/constants/palette.dart';
import 'package:travel_mobile_app/pages/results_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Mobile App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Palette.primaryColor,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
          ),
        ),
      ),
      home: const ResultsPage(),
    );
  }
}
