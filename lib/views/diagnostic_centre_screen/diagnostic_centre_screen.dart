import 'package:flutter/material.dart';
import '../../global/widget/custom_app_bar.dart';
import 'components/diagnostic_centre_widget.dart';

class DiagnosticCenterScreen extends StatefulWidget {
  const DiagnosticCenterScreen({super.key});

  @override
  State<DiagnosticCenterScreen> createState() => _DiagnosticCenterScreenState();
}

class _DiagnosticCenterScreenState extends State<DiagnosticCenterScreen> {

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
            title: 'ডায়াগনস্টিক সেন্টার',
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
                  return DiagnosticCenterWidget(
                    instituteName: "Modern Diagnostic Center",
                    thana: "Sodor",
                    phone: "+88 01700 00 00 00",
                    address: "Boro Mosjid Road, Grand Trunk Road, Feni",
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