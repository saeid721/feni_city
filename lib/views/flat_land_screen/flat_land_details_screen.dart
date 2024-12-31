import 'package:flutter/material.dart';
import '../../global/widget/custom_app_bar.dart';
import 'components/flat_land_details_widget.dart';

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
                title: 'প্রতাপপুর জমিদার বাড়ি',
                imagePath: 'assets/images/01.jpg',
                text: "প্রতাপপুর জমিদার বাড়ি (Pratappur Zamindar Bari) চট্টগ্রাম বিভাগের ফেনী জেলার অন্তর্গত দাগনভূঞা উপজেলার এক ঐতিহাসিক জমিদার বাড়ি। প্রায় ১৮৫০ কিংবা ১৮৬০ সালে এই জমিদার বাড়িটি নির্মিত হয়। স্থানীয়দের কাছে এটি প্রতাপপুর বড় বাড়ি হিসেবেও পরিচিত। এই এলাকার আশেপাশে যত জমিদার ছিল সবার শীর্ষে ছিল এই জমিদার।",
                address: 'প্রতাপপুর, দাগনভূঞা, ফেনী',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
