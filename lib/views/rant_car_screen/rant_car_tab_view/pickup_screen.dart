import 'package:flutter/material.dart';
import '../components/rant_car_widget.dart';

class PickupScreen extends StatefulWidget {
  final String instituteId;
  const PickupScreen({
    super.key,
    required this.instituteId,
  });

  @override
  State<PickupScreen> createState() => _PickupScreenState();
}

class _PickupScreenState extends State<PickupScreen> {

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
                    instituteName: "পিকআপ",
                    thana: "সদর",
                    phone: "+88 01700 00 00 00",
                    address: "সদর, ফেনী",
                    imagePath: 'assets/images/rane_car/pickup/pickup.jpg',
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
