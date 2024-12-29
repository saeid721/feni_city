import 'package:flutter/material.dart';
import '../../global/widget/custom_app_bar.dart';
import 'components/bidyut_office_widget.dart';

class BidyutOfficeScreen extends StatefulWidget {
  const BidyutOfficeScreen({super.key});

  @override
  State<BidyutOfficeScreen> createState() => _BidyutOfficeScreenState();
}

class _BidyutOfficeScreenState extends State<BidyutOfficeScreen> {

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
            title: 'বিদ্যুৎ অফিস',
            notiOnTap: () {},
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                itemCount: 7,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (ctx, index) {
                  return BidyutOfficeWidget(
                    instituteName: "ফেনী পল্লী বিদ্যুৎ সমিতি",
                    thana: "সদর",
                    phone: "+88 01700 00 00 00",
                    address: "ফেনী সদর, ফেনী",
                    imagePath: 'assets/images/bidyut/fenipallibidyut.jpeg',
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
      );
  }
}
