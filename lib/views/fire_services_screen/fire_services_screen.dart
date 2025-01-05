import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../global/constants/colors_resources.dart';
import '../../global/widget/custom_app_bar.dart';
import '../notification_screen/notification_screen.dart';
import 'components/fire_services_widget.dart';

class FireServicesScreen extends StatefulWidget {
  const FireServicesScreen({super.key});

  @override
  State<FireServicesScreen> createState() => _FireServicesScreenState();
}

class _FireServicesScreenState extends State<FireServicesScreen> {

  @override
  void initState() {
    // TODO: implement initState
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
            title: 'ফায়ার সার্ভিস',
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
                  itemCount: 7,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (ctx, index) {
                    return FireServicesWidget(
                      instituteName: "ফায়ার সার্ভিস ও সিভিল ডিফেন্স",
                      thana: "সদর",
                      phone: "+88 01700 00 00 00",
                      address: "সদর, ফেনী",
                      imagePath: 'assets/images/fire_service/fireService.png',
                      call: "কল",
                      sms: "এস.এম.এস",
                      map: "ম্যাপ",
                      onTap: () {

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
