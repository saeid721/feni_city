import 'package:flutter/material.dart';
import 'global/constants/colors_resources.dart';
import 'global/constants/enum.dart';
import 'global/widget/global_image_loader.dart';
import 'global/widget/global_text.dart';
import 'views/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: ColorRes.primaryColor.withAlpha((0.20 * 255).toInt()),
        ),
        child: Center(
          child: Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GlobalImageLoader(
                imagePath: 'assets/images/feniCity.png',
                width: 200,
                imageFor: ImageFor.asset,
              ),
              // GlobalText(
              //   str: 'Feni City',
              //   color: ColorRes.primaryColor,
              //   fontSize: 50,
              //   fontWeight: FontWeight.w700,
              //   textAlign: TextAlign.center,
              //   fontFamily: 'Potta',
              // ),
              GlobalText(
                str: 'Developed by STITBD',
                color: ColorRes.primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w700,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
