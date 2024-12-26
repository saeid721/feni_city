import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../global/constants/colors_resources.dart';

class BusWebViewScreen extends StatefulWidget {
  const BusWebViewScreen({super.key});

  @override
  State<BusWebViewScreen> createState() => _BusWebViewScreenState();
}

class _BusWebViewScreenState extends State<BusWebViewScreen> {
  late WebViewController controller;
  var loadingPercentage = 0;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setNavigationDelegate(NavigationDelegate(
        onPageStarted: (url) {
          setState(() {
            loadingPercentage = 0;
          });
        },
        onProgress: (progress) {
          setState(() {
            loadingPercentage = progress;
          });
        },
        onPageFinished: (url) {
          setState(() {
            loadingPercentage = 100;
          });
        },
      ))
      ..loadRequest(
        Uri.parse('https://www.shohoz.com/bus-tickets'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.primaryColor,
      resizeToAvoidBottomInset: false,

      body: SafeArea(
        child: Stack(
          children: [
            WebViewWidget(
              controller: controller,
            ),
            loadingPercentage < 100
                ? LinearProgressIndicator(
              color: Colors.red,
              value: loadingPercentage / 100.0,
            )
                : Container(),
          ],
        ),
      ),

      // bottomNavigationBar: CustomBottomNavigationBar(
      //   controller: controller,
      //   onHomePressed: () {
      //     Get.offAll(HomeScreen());
      //   },
      // ),
    );
  }
}
