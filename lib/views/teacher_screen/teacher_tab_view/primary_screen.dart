import 'package:flutter/material.dart';
import '../components/teacher_details_widget.dart';

class PrimaryScreen extends StatefulWidget {
  final String instituteId;
  const PrimaryScreen({
    super.key,
    required this.instituteId,
  });

  @override
  State<PrimaryScreen> createState() => _PrimaryScreenState();
}

class _PrimaryScreenState extends State<PrimaryScreen> {

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
                    name: "রাকিবুল ইসলাম",
                    instituteName: "আজমিরী বেগম রেজিঃ বেঃ প্রাঃ বিদ্যালয়",
                    thana: "ছাগলনাইয়া",
                    phone: "+88 01700 00 00 00",
                    subject: "অংক, ইংলিশ, রসায়ন, পদার্থ বিজ্ঞান",
                    address: "ছাগলনাইয়া, ফেনী",
                    imagePath: 'assets/images/teacher/teacher.jpg',
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
