import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../global/constants/colors_resources.dart';
import '../../global/constants/images.dart';
import '../../global/model.dart';
import '../../global/widget/custom_app_bar.dart';
import '../../global/widget/global_container.dart';
import '../../global/widget/home_menu_widget.dart';
import 'monorog_screen.dart';

class DoctorScreen extends StatefulWidget {
  const DoctorScreen({super.key});

  @override
  State<DoctorScreen> createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();

  // List<GlobalMenuModel> menuItem = [
  //   GlobalMenuModel(img: Images.doctorInc, text: 'মেডিসিন বিশেষজ্ঞ'),
  //   GlobalMenuModel(img: Images.doctorInc, text: 'হৃদরোগ বিশেষজ্ঞ'),
  //   GlobalMenuModel(img: Images.doctorInc, text: 'চর্ম ও যৌন রোগ বিশেষজ্ঞ'),
  //   GlobalMenuModel(img: Images.doctorInc, text: 'নাক, কান, গলা বিশেষজ্ঞ'),
  //   GlobalMenuModel(img: Images.doctorInc, text: 'ডায়াবেটিস ও হরমোন বিশেষজ্ঞ'),
  //   GlobalMenuModel(img: Images.doctorInc, text: 'মনোরোগ বিশেষজ্ঞ'),
  //   GlobalMenuModel(img: Images.doctorInc, text: 'পাইলস বিশেষজ্ঞ'),
  //   GlobalMenuModel(img: Images.doctorInc, text: 'ডেন্টিস্ট'),
  //   GlobalMenuModel(img: Images.doctorInc, text: 'চক্ষু বিশেষজ্ঞ'),
  //   GlobalMenuModel(img: Images.doctorInc, text: 'লিভার বিশেষজ্ঞ'),
  //   GlobalMenuModel(img: Images.doctorInc, text: 'ইউরোলজি বিশেষজ্ঞ'),
  //   GlobalMenuModel(img: Images.doctorInc, text: 'সার্জারি বিশেষজ্ঞ'),
  //   GlobalMenuModel(img: Images.doctorInc, text: 'গাইনি বিশেষজ্ঞ'),
  //   GlobalMenuModel(img: Images.doctorInc, text: 'রক্তরোগ বিশেষজ্ঞ'),
  //   GlobalMenuModel(img: Images.doctorInc, text: 'হোমিওপ্যাথি বিশেষজ্ঞ'),
  //   GlobalMenuModel(img: Images.doctorInc, text: 'লেজার সার্জারি বিশেষজ্ঞ'),
  //   GlobalMenuModel(img: Images.doctorInc, text: 'মেডিসিন বিশেষজ্ঞ'),
  //   GlobalMenuModel(img: Images.doctorInc, text: 'কিডনি রোগ বিশেষজ্ঞ'),
  //   GlobalMenuModel(img: Images.doctorInc, text: 'নিউরো সার্জারি বিশেষজ্ঞ'),
  //   GlobalMenuModel(img: Images.doctorInc, text: 'স্নায়ু রোগ বিশেষজ্ঞ'),
  //   GlobalMenuModel(img: Images.doctorInc, text: 'পুষ্টি  বিশেষজ্ঞ'),
  //   GlobalMenuModel(img: Images.doctorInc, text: 'ক্যান্সার বিশেষজ্ঞ'),
  //   GlobalMenuModel(img: Images.doctorInc, text: 'অর্থপেডিক বিশেষজ্ঞ'),
  //   GlobalMenuModel(img: Images.doctorInc, text: 'ব্যাথা বিশেষজ্ঞ'),
  //   GlobalMenuModel(img: Images.doctorInc, text: 'শিশু রোগ বিশেষজ্ঞ'),
  //   GlobalMenuModel(img: Images.doctorInc, text: 'ফিজিশিয়ান বিশেষজ্ঞ'),
  //   GlobalMenuModel(img: Images.doctorInc, text: 'ফিজিওথেরাপিস্ট বিশেষজ্ঞ'),
  //   GlobalMenuModel(img: Images.doctorInc, text: 'প্লাস্টিক সার্জারি বিশেষজ্ঞ'),
  //   GlobalMenuModel(img: Images.doctorInc, text: 'অ্যাজমা, যক্ষা ও বক্ষব্যাধি বিশেষজ্ঞ'),
  //   GlobalMenuModel(img: Images.doctorInc, text: 'মনোরোগ বিশেষজ্ঞ'),
  //   GlobalMenuModel(img: Images.doctorInc, text: 'মনোরোগ বিশেষজ্ঞ'),
  // ];
  //
  List<GlobalMenuModel> menuItem = [
    GlobalMenuModel(img: Images.doctorInc, text: 'মেডিসিন'),
    GlobalMenuModel(img: Images.nephrologist, text: 'নেফ্রোলজিস্ট'),
    GlobalMenuModel(img: Images.gastroenterologist, text: 'গ্যাস্ট্রোএন্টারোলজিস্ট'),
    GlobalMenuModel(img: Images.pulmonologist, text: 'পালমোনোলজিস্ট'),
    GlobalMenuModel(img: Images.endocrinologist, text: 'এন্ডোক্রাইনোলজিস্ট'),
    GlobalMenuModel(img: Images.neurologist, text: 'নিউরোলজিস্ট'),
    GlobalMenuModel(img: Images.hematologist, text: 'হেমাটোলজিস্ট'),
    GlobalMenuModel(img: Images.rheumatologists, text: 'রিউমাটোলজিস্ট'),
    GlobalMenuModel(img: Images.pediatrician, text: 'পেডিয়াট্রিশিয়ান'),
    GlobalMenuModel(img: Images.gynecologist, text: 'গাইনোকোলজিস্ট'),
    GlobalMenuModel(img: Images.obstetrician, text: 'অবস্টেট্রিশিয়ান'),
    GlobalMenuModel(img: Images.cardiologist, text: 'কার্ডিওলজিস্ট'),
    GlobalMenuModel(img: Images.cardiothoracic, text: 'কার্ডিওথোরাসিক সার্জন'),
    GlobalMenuModel(img: Images.orthopedics, text: 'অর্থোপেডিক সার্জন'),
    GlobalMenuModel(img: Images.plasticSurgeon, text: 'প্লাস্টিক সার্জন'),
    GlobalMenuModel(img: Images.cosmeticSurgeon, text: 'কসমেটিক সার্জন'),
    GlobalMenuModel(img: Images.transplantSurgeon, text: 'ট্রান্সপ্লান্ট সার্জন'),
    GlobalMenuModel(img: Images.neurosurgeon, text: 'নিউরো সার্জন'),
    GlobalMenuModel(img: Images.generalSurgeon, text: 'জেনারেল সার্জন'),
    GlobalMenuModel(img: Images.ophthalmologist, text: 'অপথালমোলজিস্ট'),
    GlobalMenuModel(img: Images.ent, text: 'ইএনটি স্পেশালিস্ট'),
    GlobalMenuModel(img: Images.dermatologist, text: 'ডার্মাটোলজিস্ট'),
    GlobalMenuModel(img: Images.allergist, text: 'এলার্জোলজিস্ট'),
    GlobalMenuModel(img: Images.psychiatrist, text: 'সাইকিয়াট্রিস্ট'),
    GlobalMenuModel(img: Images.doctorInc, text: 'সাইকোলজিস্ট'),
    GlobalMenuModel(img: Images.oncologist, text: 'অনকোলজিস্ট'),
    GlobalMenuModel(img: Images.urologist, text: 'ইউরোলজিস্ট'),
    GlobalMenuModel(img: Images.radiologist, text: 'রেডিওলজিস্ট'),
    GlobalMenuModel(img: Images.doctorInc, text: 'প্যাথলজিস্ট'),
    GlobalMenuModel(img: Images.doctorInc, text: 'ডেন্টিস্ট'),
    GlobalMenuModel(img: Images.doctorInc, text: 'ক্রিটিকাল কেয়ার স্পেশালিস্ট'),
    GlobalMenuModel(img: Images.doctorInc, text: 'ইমার্জেন্সি মেডিসিন স্পেশালিস্ট'),
    GlobalMenuModel(img: Images.doctorInc, text: 'প্রিভেন্টিভ মেডিসিন স্পেশালিস্ট'),
    GlobalMenuModel(img: Images.doctorInc, text: 'পাবলিক হেলথ স্পেশালিস্ট'),
    GlobalMenuModel(img: Images.doctorInc, text: 'ইনফেকশিয়াস ডিজিজ স্পেশালিস্ট'),
    GlobalMenuModel(img: Images.doctorInc, text: 'স্পোর্টস মেডিসিন স্পেশালিস্ট'),
    GlobalMenuModel(img: Images.doctorInc, text: 'পেইন ম্যানেজমেন্ট স্পেশালিস্ট'),
    GlobalMenuModel(img: Images.doctorInc, text: 'প্যালিয়েটিভ কেয়ার স্পেশালিস্ট'),
    GlobalMenuModel(img: Images.occupationalMedicineSpecialist, text: 'অকুপেশনাল মেডিসিন স্পেশালিস্ট'),
    GlobalMenuModel(img: Images.clinicalGeneticist, text: 'ক্লিনিক্যাল জেনেটিসিস্ট'),
    GlobalMenuModel(img: Images.nutritionist, text: 'ডায়েটেশিয়ান বা নিউট্রিশনিস্ট'),
    GlobalMenuModel(img: Images.childDevelopmentSpecialist, text: 'চাইল্ড ডেভেলপমেন্ট স্পেশালিস্ট'),
    GlobalMenuModel(img: Images.physician, text: 'ফিজিয়োথেরাপিস্ট'),
    GlobalMenuModel(img: Images.fertilitySpecialist, text: 'ফার্টিলিটি স্পেশালিস্ট'),
    GlobalMenuModel(img: Images.sexologist, text: 'সেক্সোলজিস্ট'),
    GlobalMenuModel(img: Images.toxicologist, text: 'টক্সিকোলজিস্ট'),
    GlobalMenuModel(img: Images.geriatrician, text: 'জেরিয়াট্রিশিয়ান'),
    GlobalMenuModel(img: Images.doctorInc, text: 'হোমিওপ্যাথি'),
  ];
  int currentIndex = 0;
  final CarouselController buttonCarouselController = CarouselController();

  final List<String> sliderImage = [
    'assets/images/01.jpg',
    'assets/images/05.jpg',
    'assets/images/02.jpg',
    'assets/images/03.jpg',
    'assets/images/04.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.white,
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

          Expanded(
            child: SingleChildScrollView(
              child: GridView.builder(
                  itemCount: menuItem.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    mainAxisExtent: 100,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  itemBuilder: (ctx, index) {
                    return GestureDetector(
                      onTap: () {
                        switch (index) {
                          case 0:
                            Get.to(() => const MonorogScreen());
                            break;
                          case 1:
                            Get.to(() => const MonorogScreen());
                            break;
                          case 2:
                            Get.to(() => const MonorogScreen());
                            break;
                          case 3:
                            Get.to(() => const MonorogScreen());
                            break;
                          case 4:
                            Get.to(() => const MonorogScreen());
                            break;
                          case 5:
                            Get.to(() => const MonorogScreen());
                            break;
                          case 6:
                            Get.to(() => const MonorogScreen());
                            break;
                          case 7:
                            Get.to(() => const MonorogScreen());
                            break;
                          case 8:
                            Get.to(() => const MonorogScreen());
                            break;
                          case 9:
                            Get.to(() => const MonorogScreen());
                            break;
                          case 10:
                            Get.to(() => const MonorogScreen());
                            break;
                          case 11:
                            Get.to(() => const MonorogScreen());
                            break;
                          case 12:
                            Get.to(() => const MonorogScreen());
                            break;
                          case 13:
                            Get.to(() => const MonorogScreen());
                            break;
                          case 14:
                            Get.to(() => const MonorogScreen());
                            break;
                          case 15:
                            Get.to(() => const MonorogScreen());
                            break;
                          case 16:
                            Get.to(() => const MonorogScreen());
                            break;
                          case 17:
                            Get.to(() => const MonorogScreen());
                            break;
                          case 18:
                            Get.to(() => const MonorogScreen());
                            break;
                          case 19:
                            Get.to(() => const MonorogScreen());
                            break;
                          case 20:
                            Get.to(() => const MonorogScreen());
                            break;
                          case 21:
                            Get.to(() => const MonorogScreen());
                            break;
                          case 22:
                            Get.to(() => const MonorogScreen());
                            break;
                        }
                      },
                      child: HomeMenuWidget(height: 40, width: 40, maxLines: 3, imagePath: menuItem[index].img, text: menuItem[index].text),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
