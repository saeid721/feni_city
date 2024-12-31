import 'package:flutter/material.dart';
import '../../../global/widget/custom_app_bar.dart';
import '../components/flat_details_widget.dart';
import '../components/land_details_widget.dart';

class LandDetailsScreen extends StatefulWidget {
  final int? id;
  const LandDetailsScreen({
    super.key,
    required this.id,
  });

  @override
  State<LandDetailsScreen> createState() => _LandDetailsScreenState();
}

class _LandDetailsScreenState extends State<LandDetailsScreen> {
  @override
  void initState() {
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
          title: 'ফ্ল্যাট ও জমি',
          notiOnTap: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              LandDetailsWidget(
                title: 'মিয়াজি বাড়ি',
                phone: "+88 01868668722",
                size: "৩ শতক",
                amount: "28,00,000.00 tk",
                imagePath: 'assets/images/flat_land/flat.jpg',
                address: 'রামপুর গার্লস হাই স্কুলের পাশে, মিয়াজি বাড়ি সড়ক, ফেনী',
                details: "ফেনী, রামপুর ‍গার্লস হাই স্কুলের পাশে একটি মিডিয়াম সাইজের ফ্ল্যাট বিক্রয় করা হবে (৭৫০-৮০০), ৩ বেডরুম, ১ ডাইনিং, ২ বাথরুম, ১ কিচেন",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
