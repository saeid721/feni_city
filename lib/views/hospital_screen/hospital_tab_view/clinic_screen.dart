import 'package:flutter/material.dart';
import '../components/hospital_widget.dart';

class ClinicScreen extends StatefulWidget {
  final String instituteId;
  const ClinicScreen({
    super.key,
    required this.instituteId,
  });

  @override
  State<ClinicScreen> createState() => _ClinicScreenState();
}

class _ClinicScreenState extends State<ClinicScreen> {

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
                    instituteName: "Feni Private Hospital and Laparoscopic Institute",
                    thana: "Mohipal",
                    phone: "+88 01700 00 00 00",
                    address: "Feni City Bypass, Feni",
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
