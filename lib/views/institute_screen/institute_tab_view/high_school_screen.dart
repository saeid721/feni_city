import 'package:flutter/material.dart';
import '../components/institute_details_widget.dart';

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
                  return InstituteDetailsWidget(
                    instituteName: "Adarsha High School",
                    thana: "ছাগলনাইয়া",
                    phone: "+88 01819834148",
                    address: "Nairaj Pur, Feni",
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
