import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../global/constants/colors_resources.dart';
import '../../global/constants/images.dart';
import '../../global/model.dart';
import '../../global/widget/custom_app_bar.dart';
import '../../global/widget/global_container.dart';
import '../../global/widget/home_menu_widget.dart';
import 'ajeyo_bangla_web_view_screen.dart';
import 'daily_provatalo_web_view_screen.dart';
import 'doinik_amar_feni_web_view_screen.dart';
import 'doinik_feni_web_view_screen.dart';
import 'fenir_shomoy_web_view_screen.dart';
import 'naya_paigam_web_view_screen.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();

  // List<GlobalMenuModel> menuItem = [
  //   GlobalMenuModel(img: Images.fenirshomoy, text: ''),
  //   GlobalMenuModel(img: Images.doinikfeni, text: ''),
  //   GlobalMenuModel(img: Images.doinikamarfeni, text: ''),
  //   GlobalMenuModel(img: Images.ajeyobangla, text: ''),
  //   GlobalMenuModel(img: Images.dailyprovatalo, text: ''),
  //   GlobalMenuModel(img: Images.nayapaigam, text: ''),
  // ];

  List<GlobalMenuModel> menuItem = [
    GlobalMenuModel(img: Images.fenirshomoy, text: 'দৈনিক ফেনীর সময়'),
    GlobalMenuModel(img: Images.doinikfeni, text: 'দৈনিক ফেনী'),
    GlobalMenuModel(img: Images.doinikamarfeni, text: 'দৈনিক আমার ফেনী'),
    GlobalMenuModel(img: Images.nayapaigam, text: 'দৈনিক নয়া পয়গাম'),
    GlobalMenuModel(img: Images.ajeyobangla, text: 'অজেয় বাংলা'),
    GlobalMenuModel(img: Images.dailyprovatalo, text: 'প্রভাত আলো'),
  ];

  int currentIndex = 0;
  final CarouselController buttonCarouselController = CarouselController();

  final List<String> sliderImage = [
    'assets/images/01.jpg',
    'assets/images/02.jpg',
    'assets/images/03.jpg',
    'assets/images/04.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: GlobalAppBar(
          title: 'ফেনীর খবর',
          notiOnTap: () {},
        ),
      ),
      body: Column(
        spacing: 5,
        children: [
          // Carousel Slider
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              child: CarouselSlider(
                items: sliderImage.map((item) {
                  return GlobalContainer(
                    borderRadiusCircular: 10,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                      child: Image.asset(
                        item,
                        fit: BoxFit.fill,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                  );
                }).toList(),
                options: CarouselOptions(
                  scrollPhysics: const BouncingScrollPhysics(),
                  autoPlay: true,
                  aspectRatio: 2,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: sliderImage.asMap().entries.map((entry) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: 3,
                width: currentIndex == entry.key ? 15 : 7,
                margin: const EdgeInsets.symmetric(horizontal: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: currentIndex == entry.key
                      ? ColorRes.primaryColor
                      : ColorRes.grey,
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 5),

          SingleChildScrollView(
            child: GridView.builder(
                itemCount: menuItem.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  mainAxisExtent: 120,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                itemBuilder: (ctx, index) {
                  return GestureDetector(
                    onTap: () {
                      switch (index) {
                        case 0:
                          Get.to(() => const FenirShomoyNewsWebViewScreen());
                          break;
                        case 1:
                          Get.to(() => const DoinikFeniNewsWebViewScreen());
                          break;
                        case 2:
                          Get.to(() => const DoinikAmarFeniNewsWebViewScreen());
                          break;
                        case 3:
                          Get.to(() => const NayaPaigamNewsWebViewScreen());
                          break;
                        case 4:
                          Get.to(() => const AjeyoBanglaNewsWebViewScreen());
                          break;
                        case 5:
                          Get.to(() => const DailyProvataloNewsWebViewScreen());
                          break;
                      }
                    },
                    child: HomeMenuWidget(width: 90, maxLines: 1, imagePath: menuItem[index].img, text: menuItem[index].text),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
