import 'package:flutter/material.dart';
import '../../global/widget/custom_app_bar.dart';
import 'components/parlour_widget.dart';

class ParlourScreen extends StatefulWidget {
  const ParlourScreen({super.key});

  @override
  State<ParlourScreen> createState() => _ParlourScreenState();
}

class _ParlourScreenState extends State<ParlourScreen> {

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
          title: 'ফ্ল্যাট ও জমি',
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
              return ParlourWidget(
                title: 'হুর বিউটি পার্লার ফেনী',
                phone: "+88 01888-278666",
                address: 'সদর, ফেনী',
                imagePath: 'assets/images/parlour/parlour.jpg',
                call: "কল",
                sms: "এস.এম.এস",
                map: "ম্যাপ",
                onTap: () {

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
