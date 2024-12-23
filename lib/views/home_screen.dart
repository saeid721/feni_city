import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../global/constants/colors_resources.dart';
import '../global/constants/images.dart';
import '../global/model.dart';
import '../global/widget/custom_app_bar.dart';
import '../global/widget/global_container.dart';
import '../global/widget/home_menu_widget.dart';
import 'bus_screen/bus_web_view_screen.dart';
import 'doctor_screen/doctor_screen.dart';
import 'hospital_screen/hospital_screen.dart';
import 'train_screen/train_web_view_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<GlobalMenuModel> menuItem = [
    GlobalMenuModel(img: Images.doctorInc, text: 'ডাক্তার'),
    GlobalMenuModel(img: Images.hospitalInc, text: 'হাসপাতাল'),
    GlobalMenuModel(img: Images.busInc, text: 'বাসের সময়সূচী'),
    GlobalMenuModel(img: Images.trainInc, text: 'ট্রেনের সময়সূচী'),
    GlobalMenuModel(img: Images.touristPlacesInc, text: 'দর্শনীয় স্থান'),
    GlobalMenuModel(img: Images.roomRentInc, text: 'বাসা ভাড়া'),
    GlobalMenuModel(img: Images.shoppingCenterInc, text: 'শপিং'),
    GlobalMenuModel(img: Images.fireStationInc, text: 'ফায়ার সার্ভিস'),
    GlobalMenuModel(img: Images.courierServicesInc, text: 'কুরিয়ার সার্ভিস'),
    GlobalMenuModel(img: Images.policeInc, text: 'থানা-পুলিশ'),
    GlobalMenuModel(img: Images.websiteInc, text: 'ওয়েবসাইট'),
    GlobalMenuModel(img: Images.lightInc, text: 'বিদ্যুৎ অফিস'),
    GlobalMenuModel(img: Images.diagnosticInc, text: 'ডায়াগনস্টিক'),
    GlobalMenuModel(img: Images.bloodInc, text: 'রক্ত'),
    GlobalMenuModel(img: Images.hotelInc, text: 'হোটেল'),
    GlobalMenuModel(img: Images.carInc, text: 'গাড়ি ভাড়া'),
    GlobalMenuModel(img: Images.mistriInc, text: 'মিস্ত্রি'),
    GlobalMenuModel(img: Images.customerCareInc, text: 'জরুরী সেবা'),
    GlobalMenuModel(img: Images.jobInc, text: 'চাকরি'),
    GlobalMenuModel(img: Images.entrepreneurInc, text: 'উদ্যোক্তা'),
    GlobalMenuModel(img: Images.teacherInc, text: 'শিক্ষক'),
    GlobalMenuModel(img: Images.makeupInc, text: 'পার্লার'),
    GlobalMenuModel(img: Images.restaurantInc, text: 'রেস্টুরেন্ট'),
    GlobalMenuModel(img: Images.flatLandInc, text: 'ফ্ল্যাট ও জমি'),
    GlobalMenuModel(img: Images.videoInc, text: 'ভিডিও'),
    GlobalMenuModel(img: Images.newspaperInc, text: 'আজকের ফেনী'),
    GlobalMenuModel(img: Images.collageInc, text: 'শিক্ষা প্রতিষ্ঠান'),
    GlobalMenuModel(img: Images.nurseryInc, text: 'নার্সারি'),
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
      appBar: CustomAppBar(
        title: 'Feni City',
        onSearchTap: () {
          // Handle search action
        },
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
                    borderCornerRadius: const BorderRadius.all(Radius.circular(10.0)),
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
                height: 7,
                width: currentIndex == entry.key ? 15 : 7,
                margin: const EdgeInsets.symmetric(horizontal: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: currentIndex == entry.key
                      ? ColorRes.primaryColor
                      : ColorRes.borderColor,
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
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      mainAxisExtent: 90,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  itemBuilder: (ctx, index){
                    return GestureDetector(
                        onTap: (){
                          switch(index){
                            case 0:
                              Get.to(()=> const DoctorScreen());
                              break;
                            case 1:
                              Get.to(()=> const HospitalScreen());
                              break;
                            case 2:
                              Get.to(()=> const DoctorScreen());
                              break;
                            case 3:
                              Get.to(()=> const BusWebViewScreen());
                              break;
                            case 4:
                              Get.to(()=> const TrainWebViewScreen());
                              break;
                            case 5:
                              Get.to(()=> const DoctorScreen());
                              break;
                            case 6:
                              Get.to(()=> const DoctorScreen());
                              break;
                            case 7:
                              Get.to(()=> const DoctorScreen());
                              break;
                            case 8:
                              Get.to(()=> const DoctorScreen());
                              break;
                            case 9:
                              Get.to(()=> const DoctorScreen());
                              break;
                            case 10:
                              Get.to(()=> const DoctorScreen());
                              break;
                            case 11:
                              Get.to(()=> const DoctorScreen());
                              break;
                            case 12:
                              Get.to(()=> const DoctorScreen());
                              break;
                            case 13:
                              Get.to(()=> const DoctorScreen());
                              break;
                            case 14:
                              Get.to(()=> const HospitalScreen());
                              break;
                            case 15:
                              Get.to(()=> const HospitalScreen());
                              break;
                            case 16:
                              Get.to(()=> const HospitalScreen());
                              break;
                            case 17:
                              Get.to(()=> const HospitalScreen());
                              break;
                            case 18:
                              Get.to(()=> const HospitalScreen());
                              break;
                            case 19:
                              Get.to(()=> const HospitalScreen());
                              break;
                            case 20:
                              Get.to(()=> const HospitalScreen());
                              break;
                            case 21:
                              Get.to(()=> const HospitalScreen());
                              break;
                            case 22:
                              Get.to(()=> const HospitalScreen());
                              break;
                          }
                        },
                        child: HomeMenuWidget(
                            height: 40,
                            width: 40,
                            maxLines: 1,
                            imagePath: menuItem[index].img,
                            text: menuItem[index].text
                        )
                    );
                  }
              ),
            ),
          ),
        ],
      ),
    );
  }
}
