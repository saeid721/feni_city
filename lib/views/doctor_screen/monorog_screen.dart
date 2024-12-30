import 'package:flutter/material.dart';
import '../../global/widget/custom_app_bar.dart';
import 'components/bidyut_office_widget.dart';
import 'components/doctor_details_widget.dart';

class MonorogScreen extends StatefulWidget {
  const MonorogScreen({super.key});

  @override
  State<MonorogScreen> createState() => _MonorogScreenState();
}

class _MonorogScreenState extends State<MonorogScreen> {

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
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: GlobalAppBar(
            title: 'মনোরোগ বিশেষজ্ঞ',
            notiOnTap: () {},
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                itemCount: 7,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (ctx, index) {
                  return DoctorDetailsWidget(
                    name: "Dr. Himadri Mahajon",
                    degree: "MBBS, BCS (Health), MD (Psychiatry),",
                    designation: "Assistant Professor of Psychiatry",
                    address: "Chittagong Medical College & Hospital, Chittagong",
                    chamber: "ফেনী সদর, ফেনী",
                    phone: "+88 01700 00 00 00",
                    details: "Depression and drug addiction specialists ",
                    imagePath: 'assets/images/doctors/HimadriMahajon.png',
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
