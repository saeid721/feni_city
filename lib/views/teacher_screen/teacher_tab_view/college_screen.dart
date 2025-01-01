import 'package:flutter/material.dart';
import '../components/teacher_details_widget.dart';

class CollegeScreen extends StatefulWidget {
  final String instituteId;
  const CollegeScreen({
    super.key,
    required this.instituteId,
  });

  @override
  State<CollegeScreen> createState() => _CollegeScreenState();
}

class _CollegeScreenState extends State<CollegeScreen> {

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
                    instituteName: "ফেনী সরকারি কলেজ",
                    thana: "সদর",
                    phone: "+88 01700 00 00 00",
                    subject: "অংক, ইংলিশ, রসায়ন, পদার্থ বিজ্ঞান",
                    address: "কলেজ রোড, ফেনী",
                    imagePath: 'assets/images/institute/feniSodorCollege.jpg',
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
