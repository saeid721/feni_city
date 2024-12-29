import 'package:flutter/material.dart';
import '../components/institute_details_widget.dart';

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
                  return InstituteDetailsWidget(
                    instituteName: "আজমিরী বেগম রেজিঃ বেঃ প্রাঃ বিদ্যালয়",
                    thana: "ছাগলনাইয়া",
                    phone: "+88 01719340940",
                    address: "ছাগলনাইয়া, ফেনী",
                    imagePath: 'assets/images/01.jpg',
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
