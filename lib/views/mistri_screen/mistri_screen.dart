import 'package:flutter/material.dart';
import '../../global/widget/custom_app_bar.dart';
import 'components/mistri_details_widget.dart';

class MistriScreen extends StatefulWidget {
  const MistriScreen({super.key});

  @override
  State<MistriScreen> createState() => _MistriScreenState();
}

class _MistriScreenState extends State<MistriScreen> with SingleTickerProviderStateMixin {
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
          title: 'মিস্ত্রি',
          notiOnTap: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListView.builder(
                itemCount: 7,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (ctx, index) {
                  return MistriDetailsWidget(
                    name: "রায়হান ইসলাম",
                    designation: "রং মিস্ত্রি",
                    phone: "+88 01700 00 00 00",
                    services: "বাসায় রং করা হয়",
                    address: "সদর, ফেনী",
                    imagePath: 'assets/images/mistri/mistri.jpg',
                    call: "কল",
                    sms: "এস.এম.এস",
                    map: "ম্যাপ",
                    onTap: () {},
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
