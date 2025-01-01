import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../global/widget/custom_app_bar.dart';
import 'components/flat_land_widget.dart';
import 'basa_vara_details_screen.dart';

class BasaVaraScreen extends StatefulWidget {
  const BasaVaraScreen({super.key,});

  @override
  State<BasaVaraScreen> createState() => _BasaVaraScreenState();
}

class _BasaVaraScreenState extends State<BasaVaraScreen> {

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
            title: 'বাসা ভাড়া',
            notiOnTap: () {},
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
                      size: "800 sft",
                      bedroom: "3",
                      date: "01/02/2025",
                      amount: "10,000tk",
                      imagePath: 'assets/images/flat_land/flat.jpg',
                      address: 'রামপুর গার্লস হাই স্কুলের পাশে, মিয়াজি বাড়ি, ফেনী',
                      call: "কল",
                      sms: "এস.এম.এস",
                      map: "ম্যাপ",
                      onTap: () {
                        Get.to(() => BasaVaraDetailsScreen());
                      },
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
