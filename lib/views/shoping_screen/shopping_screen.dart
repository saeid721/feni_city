import 'package:flutter/material.dart';
import '../../global/widget/custom_app_bar.dart';
import 'components/shopping_widget.dart';

class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({super.key});

  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {

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
          title: 'মার্কেট',
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
              return ShoppingWidget(
                title: 'এফ রাহমান এসি মার্কেট',
                address: 'সদর, ফেনী',
                imagePath: 'assets/images/shopping/shopping.jpg',
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
