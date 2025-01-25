import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../global/constants/colors_resources.dart';
import '../../global/widget/custom_app_bar.dart';
import '../notification_screen/notification_screen.dart';
import 'components/joruri_seba_widget.dart';

class JoruriSebaScreen extends StatefulWidget {
  const JoruriSebaScreen({super.key});

  @override
  State<JoruriSebaScreen> createState() => _JoruriSebaScreenState();
}

class _JoruriSebaScreenState extends State<JoruriSebaScreen> {

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
            title: 'জরুরী সেবার হটলাইন',
            notiOnTap: () {},
            actions: [
              IconButton(
                onPressed: () {
                  Get.to(() => NotificationScreen());
                },
                icon: const Icon(Icons.notifications_on_rounded, color: ColorRes.white,),
              ),
            ],
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
                    return JoruriSebaWidget(
                      instituteName: "জাতীয় জরুরী সেবা",
                      phone: "999",
                      address: "বাংলাদেশ",
                      imagePath: 'assets/images/joruri_seba/JoruriSeba.png',
                      call: "কল",
                      sms: "এস.এম.এস",
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
