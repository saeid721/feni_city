import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../global/constants/colors_resources.dart';
import '../../global/widget/custom_app_bar.dart';
import '../notification_screen/notification_screen.dart';
import 'components/job_widget.dart';
import 'job_details_screen.dart';

class JobScreen extends StatefulWidget {
  const JobScreen({super.key});

  @override
  State<JobScreen> createState() => _JobScreenState();
}

class _JobScreenState extends State<JobScreen> with SingleTickerProviderStateMixin {
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
          title: 'চাকরী',
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
                  return JobWidget(
                    jobTitle: "সেলসম্যান",
                    companyName: "একটি স্বনাধন্য সুপার শপ",
                    phone: "+88 01700 00 00 00",
                    applicationDeadline: "১০ জানুয়ারী ২০২৫",
                    jobType: "ফুল টাইম",
                    salary: "১০,০০০ - ১৫,০০০ টাকা",
                    call: "কল",
                    map: "ম্যাপ",
                    onTap: () {
                      Get.to(() => JobDetailsScreen());
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
