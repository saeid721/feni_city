import 'package:flutter/material.dart';
import '../../global/widget/custom_app_bar.dart';
import 'components/courier_services_widget.dart';

class CourierServicesScreen extends StatefulWidget {
  const CourierServicesScreen({super.key});

  @override
  State<CourierServicesScreen> createState() => _CourierServicesScreenState();
}

class _CourierServicesScreenState extends State<CourierServicesScreen> {

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
            title: 'কুরিয়ার সার্ভিস',
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
                    return CourierServicesWidget(
                      instituteName: "সুন্দরবন কুরিয়ার সার্ভিস",
                      thana: "সদর",
                      phone: "+88 01700 00 00 00",
                      address: "সদর, ফেনী",
                      imagePath: 'assets/images/courier_service/sundarbanCourierService.jpg',
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
