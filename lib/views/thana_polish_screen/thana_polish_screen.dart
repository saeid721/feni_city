import 'package:flutter/material.dart';
import '../../global/widget/custom_app_bar.dart';
import 'components/thana_polish_widget.dart';

class ThanaPolishScreen extends StatefulWidget {
  const ThanaPolishScreen({super.key});

  @override
  State<ThanaPolishScreen> createState() => _ThanaPolishScreenState();
}

class _ThanaPolishScreenState extends State<ThanaPolishScreen> {

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
            title: 'থানা-পুলিশ',
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
                    return ThanaPolishWidget(
                      instituteName: "ফেনী মডেল পুলিশ স্টেশন",
                      thana: "সদর",
                      phone: "+88 01700 00 00 00",
                      address: "সদর, ফেনী",
                      imagePath: 'assets/images/ThanaPolish/ThanaPolish.jpg',
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
