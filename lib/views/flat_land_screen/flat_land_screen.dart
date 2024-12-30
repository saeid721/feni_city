import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../global/widget/custom_app_bar.dart';
import 'components/flat_land_widget.dart';
import 'flat_land_details_screen.dart';

class FlatLandScreen extends StatefulWidget {
  const FlatLandScreen({super.key});

  @override
  State<FlatLandScreen> createState() => _FlatLandScreenState();
}

class _FlatLandScreenState extends State<FlatLandScreen> {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();

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
        child: Column(
          children: [
            ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (ctx, index) {
                return FlatLandWidget(
                  title: 'Where does it come from?',
                  imagePath: 'assets/images/01.jpg',
                  date: '15/12/2024',
                  onTap: () {
                    Get.to(() => FlatLandDetailsScreen(id: 1));
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
