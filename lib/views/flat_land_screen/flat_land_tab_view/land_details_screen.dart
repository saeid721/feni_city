import 'package:flutter/material.dart';
import '../../../global/widget/custom_app_bar.dart';
import '../components/flat_land_details_widget.dart';

class FlatLandDetailsScreen extends StatefulWidget {
  final int? id;
  const FlatLandDetailsScreen({
    super.key,
    required this.id,
  });

  @override
  State<FlatLandDetailsScreen> createState() => _FlatLandDetailsScreenState();
}

class _FlatLandDetailsScreenState extends State<FlatLandDetailsScreen> {
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
              FlatLandDetailsWidget(
                title: 'মিয়াজি বাড়ি সড়ক',
                phone: "+88 01868668722",
                size: "2 bedroom",
                bedroom: "3",
                bathroom: "2",
                belconi: "2",
                facing: "	West Facing",
                completionStatus: "Ready",
                furnishedStatus: "Fully furnished",
                apartmentComplex: "Peace Park",
                landShareApartments: "No",
                amount: "28,00,000.00 tk",
                imagePath: 'assets/images/flat_land/flat.jpg',
                address: 'রামপুর গার্লস হাই স্কুলের পাশে, মিয়াজি বাড়ি সড়ক, ফেনী',
                details: "প্রতাপপুর জমিদার বাড়ি (Pratappur Zamindar Bari) চট্টগ্রাম বিভাগের ফেনী জেলার অন্তর্গত দাগনভূঞা উপজেলার এক ঐতিহাসিক জমিদার বাড়ি। প্রায় ১৮৫০ কিংবা ১৮৬০ সালে এই জমিদার বাড়িটি নির্মিত হয়। স্থানীয়দের কাছে এটি প্রতাপপুর বড় বাড়ি হিসেবেও পরিচিত। এই এলাকার আশেপাশে যত জমিদার ছিল সবার শীর্ষে ছিল এই জমিদার।",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
