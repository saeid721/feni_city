import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../global/constants/colors_resources.dart';
import '../../global/constants/images.dart';
import '../../global/model.dart';
import '../../global/widget/custom_app_bar.dart';
import '../../global/widget/global_container.dart';
import '../../global/widget/home_menu_widget.dart';

class DoctorScreen extends StatefulWidget {
  const DoctorScreen({super.key});

  @override
  State<DoctorScreen> createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();

  List<GlobalMenuModel> menuItem = [
    GlobalMenuModel(img: Images.doctorInc, text: 'ডাক্তার'),
    GlobalMenuModel(img: Images.hospitalInc, text: 'হাসপাতাল'),
    GlobalMenuModel(img: Images.diagnosticInc, text: 'ডায়াগনস্টিক'),
    GlobalMenuModel(img: Images.bloodInc, text: 'রক্ত'),
    GlobalMenuModel(img: Images.busInc, text: 'বাসের সময়সূচী'),
    GlobalMenuModel(img: Images.trainInc, text: 'ট্রেনের সময়সূচী'),
    GlobalMenuModel(img: Images.carInc, text: 'গাড়ি ভাড়া'),
    GlobalMenuModel(img: Images.customerCareInc, text: 'জরুরী সেবা'),
    GlobalMenuModel(img: Images.fireStationInc, text: 'ফায়ার সার্ভিস'),
    GlobalMenuModel(img: Images.courierServicesInc, text: 'কুরিয়ার সার্ভিস'),
    GlobalMenuModel(img: Images.lightInc, text: 'বিদ্যুৎ অফিস'),
    GlobalMenuModel(img: Images.policeInc, text: 'থানা-পুলিশ'),
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
          title: 'ডাক্তার',
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
                  crossAxisCount: 4,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  mainAxisExtent: 85,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                itemBuilder: (ctx, index) {
                  return GestureDetector(
                    onTap: () {
                      switch (index) {
                        case 0:
                          Get.to(() => const DoctorScreen());
                          break;
                        case 1:
                          Get.to(() => const DoctorScreen());
                          break;
                        case 2:
                          Get.to(() => const DoctorScreen());
                          break;
                        case 3:
                          Get.to(() => const DoctorScreen());
                          break;
                        case 4:
                          Get.to(() => const DoctorScreen());
                          break;
                        case 5:
                          Get.to(() => const DoctorScreen());
                          break;
                        case 6:
                          Get.to(() => const DoctorScreen());
                          break;
                        case 7:
                          Get.to(() => const DoctorScreen());
                          break;
                        case 8:
                          Get.to(() => const DoctorScreen());
                          break;
                        case 9:
                          Get.to(() => const DoctorScreen());
                          break;
                        case 10:
                          Get.to(() => const DoctorScreen());
                          break;
                        case 11:
                          Get.to(() => const DoctorScreen());
                          break;
                        case 12:
                          Get.to(() => const DoctorScreen());
                          break;
                        case 13:
                          Get.to(() => const DoctorScreen());
                          break;
                        case 14:
                          Get.to(() => const DoctorScreen());
                          break;
                        case 15:
                          Get.to(() => const DoctorScreen());
                          break;
                        case 16:
                          Get.to(() => const DoctorScreen());
                          break;
                        case 17:
                          Get.to(() => const DoctorScreen());
                          break;
                        case 18:
                          Get.to(() => const DoctorScreen());
                          break;
                        case 19:
                          Get.to(() => const DoctorScreen());
                          break;
                        case 20:
                          Get.to(() => const DoctorScreen());
                          break;
                        case 21:
                          Get.to(() => const DoctorScreen());
                          break;
                        case 22:
                          Get.to(() => const DoctorScreen());
                          break;
                      }
                    },
                    child: HomeMenuWidget(height: 40, width: 40, maxLines: 1, imagePath: menuItem[index].img, text: menuItem[index].text),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
