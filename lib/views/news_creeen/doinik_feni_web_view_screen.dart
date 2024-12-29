import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../global/widget/custom_app_bar.dart';

class DoinikFeniNewsWebViewScreen extends StatefulWidget {
  const DoinikFeniNewsWebViewScreen({super.key});

  @override
  State<DoinikFeniNewsWebViewScreen> createState() => _DoinikFeniNewsWebViewScreenState();
}

class _DoinikFeniNewsWebViewScreenState extends State<DoinikFeniNewsWebViewScreen> {
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
        Uri.parse('https://doinikfeni.com/'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: GlobalAppBar(
          title: 'দৈনিক ফেনী',
          notiOnTap: () {},
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            WebViewWidget(
              controller: controller,
            ),
            if (loadingPercentage < 100)
              LinearProgressIndicator(
                color: Colors.red,
                value: loadingPercentage / 100.0,
              ),
          ],
        ),
      ),
    );
  }
}
