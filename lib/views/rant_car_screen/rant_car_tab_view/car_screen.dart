import 'package:flutter/material.dart';
import '../components/rant_car_widget.dart';

class CarScreen extends StatefulWidget {
  final String instituteId;
  const CarScreen({
    super.key,
    required this.instituteId,
  });

  @override
  State<CarScreen> createState() => _CarScreenState();
}

class _CarScreenState extends State<CarScreen> {

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
                    instituteName: "কার",
                    thana: "সদর",
                    phone: "+88 01700 00 00 00",
                    address: "সদর, ফেনী",
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
