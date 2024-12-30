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
        child: Column(
          children: [
            FlatLandDetailsWidget(
              title: 'Where does it come from?',
              imagePath: 'assets/images/01.jpg',
              text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
              date: '15/12/2024',
            ),
          ],
        ),
      ),
    );
  }
}
