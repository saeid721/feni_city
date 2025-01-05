import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../global/constants/colors_resources.dart';
import '../../global/widget/custom_app_bar.dart';
import '../../global/widget/global_sizedbox.dart';
import '../notification_screen/notification_screen.dart';
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
          actions: [
            IconButton(
              onPressed: () {
                Get.to(() => NotificationScreen());
              },
              icon: const Icon(Icons.notifications_on_rounded, color: ColorRes.white,),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (ctx, index) {
                  return TouristPlacesWidget(
                    title: 'প্রতাপপুর জমিদার বাড়ি',
                    imagePath: 'assets/images/tourist/torust.jpg',
                    address: 'প্রতাপপুর, দাগনভূঞা, ফেনী',
                    map: "ম্যাপ",
                    onTap: () {
                      Get.to(() => TouristPlacesDetailsScreen(id: 1));
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
