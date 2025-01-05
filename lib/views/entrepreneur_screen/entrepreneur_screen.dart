import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../global/constants/colors_resources.dart';
import '../../global/widget/custom_app_bar.dart';
import '../notification_screen/notification_screen.dart';
import 'components/entrepreneur_details_widget.dart';

class EntrepreneurScreen extends StatefulWidget {
  const EntrepreneurScreen({super.key});

  @override
  State<EntrepreneurScreen> createState() => _EntrepreneurScreenState();
}

class _EntrepreneurScreenState extends State<EntrepreneurScreen> with SingleTickerProviderStateMixin {
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
          title: 'উদ্যোক্তা',
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
                  return EntrepreneurDetailsWidget(
                    name: "রাকিবুল ইসলাম",
                    instituteName: "মা-মনি এন্টারপ্রাইজ",
                    phone: "+88 01700 00 00 00",
                    subject: "ভিসা প্রসেসিং ও বিদেশে জনবল প্রেরণ করা হয়",
                    address: "সদর, ফেনী",
                    imagePath: 'assets/images/entrepreneur/entrepreneur.jpg',
                    call: "কল",
                    sms: "এস.এম.এস",
                    map: "ম্যাপ",
                    onTap: () {},
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
