import 'package:flutter/material.dart';
import '../../../global/widget/custom_app_bar.dart';
import 'components/flat_details_widget.dart';

class BasaVaraDetailsScreen extends StatefulWidget {
  const BasaVaraDetailsScreen({super.key,});

  @override
  State<BasaVaraDetailsScreen> createState() => _BasaVaraDetailsScreenState();
}

class _BasaVaraDetailsScreenState extends State<BasaVaraDetailsScreen> {
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
          title: 'বাসা ভাড়া',
          notiOnTap: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              FlatDetailsWidget(
                title: 'মিয়াজি বাড়ি',
                phone: "+88 01868668722",
                size: "800 SFT",
                bedroom: "3",
                bathroom: "2",
                belconi: "2",
                kitchen: "1",
                date: "01/02/2025",
                floor: "1",
                amount: "10,000tk",
                imagePath: 'assets/images/flat_land/flat.jpg',
                address: 'রামপুর গার্লস হাই স্কুলের পাশে, মিয়াজি বাড়ি, ফেনী',
                details: "ফেনী, রামপুর ‍গার্লস হাই স্কুলের পাশে একটি মিডিয়াম সাইজের ফ্ল্যাট বিক্রয় করা হবে (৭৫০-৮০০), ৩ বেডরুম, ১ ডাইনিং, ২ বাথরুম, ১ কিচেন",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
