import 'package:flutter/material.dart';
import '../../global/widget/custom_app_bar.dart';
import 'components/tourist_places_details_widget.dart';

class TouristPlacesDetailsScreen extends StatefulWidget {
  final int? id;
  const TouristPlacesDetailsScreen({
    super.key,
    required this.id,
  });

  @override
  State<TouristPlacesDetailsScreen> createState() => _TouristPlacesDetailsScreenState();
}

class _TouristPlacesDetailsScreenState extends State<TouristPlacesDetailsScreen> {
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
          title: 'দর্শনীয় স্থান',
          notiOnTap: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FlatLandDetailsWidget(
              title: 'প্রতাপপুর জমিদার বাড়ি',
              imagePath: 'assets/images/01.jpg',
              text: "প্রতাপপুর জমিদার বাড়ি (Pratappur Zamindar Bari) চট্টগ্রাম বিভাগের ফেনী জেলার অন্তর্গত দাগনভূঞা উপজেলার এক ঐতিহাসিক জমিদার বাড়ি। প্রায় ১৮৫০ কিংবা ১৮৬০ সালে এই জমিদার বাড়িটি নির্মিত হয়। স্থানীয়দের কাছে এটি প্রতাপপুর বড় বাড়ি হিসেবেও পরিচিত। এই এলাকার আশেপাশে যত জমিদার ছিল সবার শীর্ষে ছিল এই জমিদার।",
              date: '15/12/2024',
            ),
          ],
        ),
      ),
    );
  }
}
