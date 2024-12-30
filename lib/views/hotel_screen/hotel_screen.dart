import 'package:flutter/material.dart';
import '../../global/widget/custom_app_bar.dart';
import 'components/hotel_widget.dart';

class HotelScreen extends StatefulWidget {
  const HotelScreen({super.key});

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {

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
            title: 'হোটেল',
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
                  return HotelWidget(
                    hotelName: "হোটেল নাইট হোল্ড (আবাসিক)",
                    thana: "মহিপাল",
                    phone: "+88 01715448838",
                    address: "হোটেল নাইট হোল্ড (আবাসিক), মহিপাল, ফেনী।",
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
