import 'package:flutter/material.dart';
import '../components/teacher_details_widget.dart';

class HighSchoolScreen extends StatefulWidget {
  final String instituteId;
  const HighSchoolScreen({
    super.key,
    required this.instituteId,
  });

  @override
  State<HighSchoolScreen> createState() => _HighSchoolScreenState();
}

class _HighSchoolScreenState extends State<HighSchoolScreen> {

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                itemCount: 7,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (ctx, index) {
                  return TeacherDetailsWidget(
                    instituteName: "ফেনী সরকারি পাইলট উচ্চ বিদ্যালয়",
                    thana: "সদর",
                    phone: "+88 01700 00 00 00",
                    subject: "অংক, ইংলিশ, রসায়ন, পদার্থ বিজ্ঞান",
                    address: "ফেনী সদর, ফেনী",
                    imagePath: 'assets/images/institute/FeniGovtPilotHighSchool.png',
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
      );
  }
}
