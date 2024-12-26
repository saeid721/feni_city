import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../global/widget/custom_app_bar.dart';

class DiagnosticWebViewScreen extends StatefulWidget {
  const DiagnosticWebViewScreen({super.key});

  @override
  State<DiagnosticWebViewScreen> createState() => _DiagnosticWebViewScreenState();
}

class _DiagnosticWebViewScreenState extends State<DiagnosticWebViewScreen> {
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
        onPageFinished: (url) async {
          setState(() {
            loadingPercentage = 20;
          });

          // Inject JavaScript to hide the header and footer
          await controller.runJavaScript('''
            (function() {
              const hideElements = () => {
                const header = document.querySelector('header');
                const footer = document.querySelector('site-footer');
                if (header) header.style.display = 'none';
                if (footer) footer.style.display = 'none';
              };
              new MutationObserver(hideElements).observe(document.body, { childList: true, subtree: true });
              hideElements();
            })();
          ''');
        },
      ))
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(
        Uri.parse('https://www.findoutdoctor.com/2018/07/feni-hospital-list.html'),
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
          title: 'ডাক্তার',
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
