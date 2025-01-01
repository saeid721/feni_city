import 'package:flutter/material.dart';
import '../../global/widget/custom_app_bar.dart';
import 'components/restaurants_widget.dart';

class RestaurantsScreen extends StatefulWidget {
  const RestaurantsScreen({super.key});

  @override
  State<RestaurantsScreen> createState() => _RestaurantsScreenState();
}

class _RestaurantsScreenState extends State<RestaurantsScreen> {

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
          title: 'রেস্টুরেন্ট',
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
              return RestaurantsWidget(
                title: 'ইস্টিশন রেস্টুরেন্ট এন্ড কনভেনশন',
                phone: "+88 01884-466633",
                address: '178 Haji Joynul Hoque Lane, SSK Road, Beside Feni Fire Service & Civil Defense, Feni, Bangladesh, Feni',
                imagePath: 'assets/images/restaurants/restaurant.jpg',
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
