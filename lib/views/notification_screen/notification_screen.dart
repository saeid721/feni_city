import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../global/widget/custom_app_bar.dart';
import 'components/notification_widget.dart';
import 'notification_details_screen.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {

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
            title: 'নোটিফিকেশন',
            notiOnTap: () {},
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
                    return NotificationWidget(
                      title: "ফেনীবাসীর জন্য বিশেষ বার্তা",
                      time: "10:30am",
                      date: "05/01/2025",
                      details: "ফেনীর সকল প্রিয় নাগরিকদের জানাই আন্তরিক শুভেচ্ছা। যারা তাদের ব্যবসা বা প্রতিষ্ঠানের প্রসার ও প্রচারের কথা ভাবছেন, তাদের জন্য একটি দুর্দান্ত সুযোগ নিয়ে এসেছে ফেনী সিটি অ্যাপ। ডিজিটাল মার্কেটিং এর আধুনিক সুবিধার মাধ্যমে আপনি সহজেই আপনার পণ্য বা প্রতিষ্ঠানের ব্র্যান্ডকে মানুষের কাছে পরিচিত করতে পারেন এবং আস্থা তৈরি করতে পারেন।",
                      onTap: () {
                        Get.to(()=> NotificationDetailsScreen());
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
