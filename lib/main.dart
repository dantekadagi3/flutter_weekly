import 'package:codelab3/pages/splash_screen.dart';
import 'package:flutter/material.dart';

const Color mainThemeColor = Color(0xFF272D8D);

void main() {
  runApp(const HotelApp());
}

class HotelApp extends StatelessWidget {
  const HotelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:SplashScreen());
  }
}
