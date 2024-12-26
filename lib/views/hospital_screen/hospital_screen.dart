// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:webview_flutter/webview_flutter.dart';
// import '../../global/widget/custom_app_bar.dart';
// import '../../global/widget/custom_bottom_navigation_bar.dart';
// import '../home_screen.dart';
//
// class HospitalScreen extends StatefulWidget {
//   const HospitalScreen({super.key});
//
//   @override
//   State<HospitalScreen> createState() => _HospitalScreenState();
// }
//
// class _HospitalScreenState extends State<HospitalScreen> {
//   late WebViewController controller;
//   var loadingPercentage = 0;
//
//   @override
//   void initState() {
//     super.initState();
//     controller = WebViewController()
//       ..setNavigationDelegate(NavigationDelegate(
//         onPageStarted: (url) {
//           setState(() {
//             loadingPercentage = 0;
//           });
//         },
//         onProgress: (progress) {
//           setState(() {
//             loadingPercentage = progress;
//           });
//         },
//         onPageFinished: (url) {
//           setState(() {
//             loadingPercentage = 100;
//           });
//         },
//       ))
//       ..loadRequest(
//         Uri.parse('https://saulibrary.edu.bd/new/download_form.php'),
//       );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       resizeToAvoidBottomInset: false,
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(60),
//         child: GlobalAuthAppBar(
//           title: 'Feni City',
//           onTap: () {
//             drawerKey.currentState!.isDrawerOpen
//                 ? drawerKey.currentState!.closeDrawer()
//                 : drawerKey.currentState!.openDrawer();
//           },
//         ),
//       ),
//       drawer: const CustomDrawerScreen(),
//       body: Stack(
//         children: [
//           WebViewWidget(
//             controller: controller,
//           ),
//           loadingPercentage < 100
//               ? LinearProgressIndicator(
//             color: Colors.red,
//             value: loadingPercentage / 100.0,
//           )
//               : Container(),
//         ],
//       ),
//
//       bottomNavigationBar: CustomBottomNavigationBar(
//         controller: controller,
//         onHomePressed: () {
//           Get.offAll(HomeScreen());
//         },
//       ),
//     );
//   }
// }
