import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/flat_land_widget.dart';
import 'flat_details_screen.dart';
import 'land_details_screen.dart';

class LandScreen extends StatefulWidget {
  final String instituteId;
  const LandScreen({
    super.key,
    required this.instituteId,
  });

  @override
  State<LandScreen> createState() => _LandScreenState();
}

class _LandScreenState extends State<LandScreen> {

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
                itemCount: 5,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (ctx, index) {
                  return FlatLandWidget(
                    title: 'মিয়াজি বাড়ি',
                    phone: "+8801820141797",
                    size: "৩ শতক",
                    amount: "28,00,000tk",
                    imagePath: 'assets/images/flat_land/land.jpg',
                    address: 'রামপুর গার্লস হাই স্কুলের পাশে, মিয়াজি বাড়ি সড়ক, ফেনী',
                    call: "কল",
                    sms: "এস.এম.এস",
                    map: "ম্যাপ",
                    onTap: () {
                      Get.to(() => LandDetailsScreen(id: 1));
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
