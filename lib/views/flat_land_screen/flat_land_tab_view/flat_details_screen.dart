import 'package:flutter/material.dart';
import '../../../global/widget/custom_app_bar.dart';
import '../components/flat_details_widget.dart';

class FlatDetailsScreen extends StatefulWidget {
  final int? id;
  const FlatDetailsScreen({
    super.key,
    required this.id,
  });

  @override
  State<FlatDetailsScreen> createState() => _FlatDetailsScreenState();
}

class _FlatDetailsScreenState extends State<FlatDetailsScreen> {
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
              FlatDetailsWidget(
                title: 'মিয়াজি বাড়ি',
                phone: "+88 01868668722",
                size: "800 SFT",
                bedroom: "3",
                bathroom: "2",
                belconi: "2",
                kitchen: "1",
                completionStatus: "Ready",
                furnishedStatus: "Fully furnished",
                apartmentComplex: "Peace Park",
                landShareApartments: "No",
                facing: "	উত্তর-দক্ষিণমুখী",
                floor: "1",
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
