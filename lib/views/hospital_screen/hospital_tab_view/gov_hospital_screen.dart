import 'package:flutter/material.dart';
import '../components/hospital_widget.dart';

class GovHospitalScreen extends StatefulWidget {
  final String instituteId;
  const GovHospitalScreen({
    super.key,
    required this.instituteId,
  });

  @override
  State<GovHospitalScreen> createState() => _GovHospitalScreenState();
}

class _GovHospitalScreenState extends State<GovHospitalScreen> {

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
                    instituteName: "Feni 250 Bed District Sadar Hospital",
                    thana: "Sadar",
                    phone: "+88 01730324771",
                    address: "Feni Sadar, Feni",
                    imagePath: 'assets/images/institute/primarylogo.png',
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
