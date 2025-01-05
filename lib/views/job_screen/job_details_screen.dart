import 'package:flutter/material.dart';
import '../../../global/widget/custom_app_bar.dart';
import 'components/job_details_widget.dart';

class JobDetailsScreen extends StatefulWidget {
  const JobDetailsScreen({
    super.key,
  });

  @override
  State<JobDetailsScreen> createState() => _JobDetailsScreenState();
}

class _JobDetailsScreenState extends State<JobDetailsScreen> {
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
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              JobDetailsWidget(
                jobTitle: 'সেলসম্যান',
                phone: "01757-769498",
                educationalQualification: "SSC",
                companyName: "একটি স্বনাধন্য সুপার শপ",
                email: "info@company.com",
                additionalRequired: "বয়স সর্বনিম্ন ২০ বছর",
                vacancy: "2",
                applicationDeadline: "১০ জানুয়ারী ২০২৫",
                responsibilities: "একটি স্বনামধন্য সুপার শপের জন্য একজন সেলসম্যান প্রয়োজন,আগ্রহী প্রার্থীদের নিম্ন লিখিত ঠিকানায় যোগাযোগ করার অনুরোধ করা হল।",
                experienceYear: "১",
                jobType: "ফুল টাইম",
                salary: "১০,০০০ - ১৫,০০০ টাকা",
                imagePath: 'assets/images/flat_land/flat.jpg',
                jobLocation: 'সদর, ফেনী',
                details: "একটি স্বনামধন্য সুপার শপের জন্য একজন সেলসম্যান প্রয়োজন,আগ্রহী প্রার্থীদের নিম্ন লিখিত ঠিকানায় যোগাযোগ করার অনুরোধ করা হল।",
                warning: "Fully furnished",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
