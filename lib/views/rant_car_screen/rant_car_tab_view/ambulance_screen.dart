import 'package:flutter/material.dart';
import '../components/rant_car_widget.dart';

class AmbulanceScreen extends StatefulWidget {
  final String instituteId;
  const AmbulanceScreen({
    super.key,
    required this.instituteId,
  });

  @override
  State<AmbulanceScreen> createState() => _AmbulanceScreenState();
}

class _AmbulanceScreenState extends State<AmbulanceScreen> {

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
                    instituteName: "অ্যাম্বুলেন্স",
                    thana: "সদর",
                    phone: "+88 01700 00 00 00",
                    address: "সদর, ফেনী",
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
