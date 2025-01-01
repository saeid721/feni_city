import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'global/constants/colors_resources.dart';
import 'splash_screen.dart';

void main() {
  runApp(const FeniCityApp());
}

class FeniCityApp extends StatelessWidget {
  const FeniCityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Feni City',
      home: const SplashScreen(),
    );
  }
}
