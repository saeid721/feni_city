import 'package:flutter/material.dart';
import '../components/teacher_details_widget.dart';

class ChoosingScreen extends StatefulWidget {
  final String instituteId;
  const ChoosingScreen({
    super.key,
    required this.instituteId,
  });

  @override
  State<ChoosingScreen> createState() => _ChoosingScreenState();
}

class _ChoosingScreenState extends State<ChoosingScreen> {

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
                    instituteName: "এক্সপার্ট কোচিং সেন্টার",
                    thana: "সদর",
                    phone: "+88 01700 00 00 00",
                    subject: "অংক, ইংলিশ, রসায়ন, পদার্থ বিজ্ঞান",
                    address: "সদর, ফেনী",
                    imagePath: 'assets/images/institute/Expertcoachingcenterfeni.jpg',
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
