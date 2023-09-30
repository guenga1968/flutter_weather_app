import 'package:flutter/material.dart';
import 'package:flutter_weather_api/screens/home_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: HomeScreen(),
      title: 'Weather App',
      debugShowCheckedModeBanner: false,
    );
  }
}
