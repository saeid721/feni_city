import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../global/widget/custom_app_bar.dart';

class AjeyoBanglaNewsWebViewScreen extends StatefulWidget {
  const AjeyoBanglaNewsWebViewScreen({super.key});

  @override
  State<AjeyoBanglaNewsWebViewScreen> createState() => _AjeyoBanglaNewsWebViewScreenState();
}

class _AjeyoBanglaNewsWebViewScreenState extends State<AjeyoBanglaNewsWebViewScreen> {
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
        Uri.parse('http://www.ajeyobangla.com/'),
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
          title: 'অজেয় বাংলা',
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
