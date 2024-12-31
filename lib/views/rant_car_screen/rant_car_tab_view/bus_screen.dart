import 'package:flutter/material.dart';
import '../components/rant_car_widget.dart';

class BusScreen extends StatefulWidget {
  final String instituteId;
  const BusScreen({
    super.key,
    required this.instituteId,
  });

  @override
  State<BusScreen> createState() => _BusScreenState();
}

class _BusScreenState extends State<BusScreen> {

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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ListView.builder(
                  itemCount: 7,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (ctx, index) {
                    return InstituteDetailsWidget(
                      instituteName: "বাস",
                      thana: "সদর",
                      phone: "+88 01700 00 00 00",
                      address: "সদর, ফেনী",
                      imagePath: 'assets/images/rane_car/bus/bus.jpg',
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
        ),
      );
  }
}
