import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../global/widget/custom_app_bar.dart';
import 'components/tourist_places_widget.dart';
import 'tourist_places_details_screen.dart';

class TouristPlacesScreen extends StatefulWidget {
  const TouristPlacesScreen({super.key});

  @override
  State<TouristPlacesScreen> createState() => _TouristPlacesScreenState();
}

class _TouristPlacesScreenState extends State<TouristPlacesScreen> {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: GlobalAppBar(
          title: 'দর্শনীয় স্থান',
          notiOnTap: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (ctx, index) {
                return FlatLandWidget(
                  title: 'প্রতাপপুর জমিদার বাড়ি',
                  imagePath: 'assets/images/01.jpg',
                  date: '15/12/2024',
                  onTap: () {
                    Get.to(() => TouristPlacesDetailsScreen(id: 1));
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
