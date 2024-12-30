import 'package:flutter/material.dart';
import '../components/rant_car_widget.dart';

class MadrashaScreen extends StatefulWidget {
  final String instituteId;
  const MadrashaScreen({
    super.key,
    required this.instituteId,
  });

  @override
  State<MadrashaScreen> createState() => _MadrashaScreenState();
}

class _MadrashaScreenState extends State<MadrashaScreen> {

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
                    instituteName: "আল জামিয়াতুল ফালাহিয়া কামিল মাদ্রাসা",
                    thana: "সদর",
                    phone: "+88 01700 00 00 00",
                    address: "ফেনী সদর, ফেনী",
                    imagePath: 'assets/images/institute/AlJameatulFalahiaKamilMadrasah.jpg',
                    call: "কল",
                    sms: "এস.এম.এস",
                    map: "ম্যাপ",
                    onTap: () {

                    },
                  );
                },
              ),
            ],
          ),
        ),
      );
  }
}