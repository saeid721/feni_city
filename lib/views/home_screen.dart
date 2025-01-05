import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../global/constants/colors_resources.dart';
import '../global/constants/images.dart';
import '../global/model.dart';
import '../global/widget/custom_app_bar.dart';
import '../global/widget/global_container.dart';
import '../global/widget/home_menu_widget.dart';
import 'app_exit_dialog.dart';
import 'auth/signin_screen.dart';
import 'basa_vara_screen/basa_vara_screen.dart';
import 'biddut_office_screen/bidyut_office_screen.dart';
import 'blood_screen/blood_web_view_screen.dart';
import 'bus_screen/bus_web_view_screen.dart';
import 'courier_services_screen/courier_services_screen.dart';
import 'custom_drawer_screen.dart';
import 'diagnostic_centre_screen/diagnostic_centre_screen.dart';
import 'doctor_screen/doctor_screen.dart';
import 'entrepreneur_screen/entrepreneur_screen.dart';
import 'fire_services_screen/fire_services_screen.dart';
import 'flat_land_screen/flat_land_screen.dart';
import 'garden_screen/garden_screen.dart';
import 'hospital_screen/hospital_screen.dart';
import 'hotel_screen/hotel_screen.dart';
import 'institute_screen/institute_screen.dart';
import 'job_screen/job_screen.dart';
import 'joruri_seba_screen/joruri_seba_screen.dart';
import 'mistri_screen/mistri_screen.dart';
import 'news_creeen/news_screen.dart';
import 'parlour_screen/parlour_screen.dart';
import 'rant_car_screen/rant_car_screen.dart';
import 'restaurants_screen/restaurants_screen.dart';
import 'shoping_screen/shopping_screen.dart';
import 'teacher_screen/teacher_screen.dart';
import 'thana_polish_screen/thana_polish_screen.dart';
import 'tourist_places_screen/tourist_places_screen.dart';
import 'train_screen/train_web_view_screen.dart';
import 'video_screen/videos_screen.dart';
import 'website_screen/website_web_view_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
    GlobalMenuModel(img: Images.shoppingCenterInc, text: 'শপিং'),
    GlobalMenuModel(img: Images.roomRentInc, text: 'বাসা ভাড়া'),
    GlobalMenuModel(img: Images.hotelInc, text: 'হোটেল'),
    GlobalMenuModel(img: Images.restaurantInc, text: 'রেস্টুরেন্ট'),
    GlobalMenuModel(img: Images.mistriInc, text: 'মিস্ত্রি'),
    GlobalMenuModel(img: Images.entrepreneurInc, text: 'উদ্যোক্তা'),
    GlobalMenuModel(img: Images.teacherInc, text: 'শিক্ষক'),
    GlobalMenuModel(img: Images.collageInc, text: 'শিক্ষা প্রতিষ্ঠান'),
    GlobalMenuModel(img: Images.makeupInc, text: 'পার্লার'),
    GlobalMenuModel(img: Images.jobInc, text: 'চাকরি'),
    GlobalMenuModel(img: Images.newspaperInc, text: 'নিউজ'),
    GlobalMenuModel(img: Images.websiteInc, text: 'ওয়েবসাইট'),
    GlobalMenuModel(img: Images.touristPlacesInc, text: 'দর্শনীয় স্থান'),
    GlobalMenuModel(img: Images.flatLandInc, text: 'ফ্ল্যাট ও জমি'),
    GlobalMenuModel(img: Images.nurseryInc, text: 'নার্সারি'),
    GlobalMenuModel(img: Images.videoInc, text: 'ভিডিও'),
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
    return WillPopScope(
      onWillPop: () async {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return AppExitDialog(
              title: "Exit App",
              message: "Are you sure you want to exit the app? All unsaved progress will be lost. Please confirm your action.",
              onTap: () {
                SystemNavigator.pop();
              },
            );
          },
        );
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: GlobalAppBar(
            title: 'Feni City',
            notiOnTap: () {},
            leading: GestureDetector(
              onTap: () {
                if (drawerKey.currentState!.isDrawerOpen) {
                  drawerKey.currentState!.closeDrawer();
                } else {
                  drawerKey.currentState!.openDrawer();
                }
              },
              child: const Icon(Icons.menu, color: ColorRes.white),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Get.to(() => SignInScreen());
                },
                icon: const Icon(Icons.login, color: ColorRes.white,),
              ),
            ],
          ),
        ),
        key: drawerKey,
        drawer: const CustomDrawerScreen(),
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
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        mainAxisExtent: 85,
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    itemBuilder: (ctx, index){
                      return GestureDetector(
                          onTap: (){
                            switch(index){
                              case 0:
                                Get.to(()=> const DoctorScreen());
                                break;
                              case 1:
                                Get.to(()=> const HospitalScreen(instituteId:""));
                                break;
                              case 2:
                                Get.to(()=> const DiagnosticCenterScreen());
                                break;
                              case 3:
                                Get.to(()=> const BloodWebViewScreen());
                                break;
                              case 4:
                                Get.to(()=> const BusWebViewScreen());
                                break;
                              case 5:
                                Get.to(()=> const TrainWebViewScreen());
                                break;
                              case 6:
                                Get.to(()=> const RantCarScreen(typeId:""));
                                break;
                              case 7:
                                Get.to(()=> const JoruriSebaScreen());
                                break;
                              case 8:
                                Get.to(()=> const FireServicesScreen());
                                break;
                              case 9:
                                Get.to(()=> const CourierServicesScreen());
                                break;
                              case 10:
                                Get.to(()=> const BidyutOfficeScreen());
                                break;
                              case 11:
                                Get.to(()=> const ThanaPolishScreen());
                                break;
                              case 12:
                                Get.to(()=> const ShoppingScreen());
                                break;
                              case 13:
                                Get.to(()=> const BasaVaraScreen());
                                break;
                              case 14:
                                Get.to(()=> const HotelScreen());
                                break;
                              case 15:
                                Get.to(()=> const RestaurantsScreen());
                                break;
                              case 16:
                                Get.to(()=> const MistriScreen());
                                break;
                              case 17:
                                Get.to(()=> const EntrepreneurScreen());
                                break;
                              case 18:
                                Get.to(()=> const TeacherScreen(instituteId:""));
                                break;
                              case 19:
                                Get.to(()=> InstituteScreen(instituteId:""));
                                break;
                              case 20:
                                Get.to(()=> const ParlourScreen());
                                break;
                              case 21:
                                Get.to(()=> const JobScreen());
                                break;
                              case 22:
                                Get.to(()=> const NewsScreen());
                                break;
                              case 23:
                                Get.to(()=> const WebsiteWebViewScreen());
                                break;
                              case 24:
                                Get.to(()=> const TouristPlacesScreen());
                                break;
                              case 25:
                                Get.to(()=> const FlatLandScreen(instituteId:""));
                                break;
                              case 26:
                                Get.to(()=> const GardenScreen());
                                break;
                              case 27:
                                Get.to(()=> const VideosScreen());
                                break;
                            }
                          },
                          child: HomeMenuWidget(
                              height: 40,
                              width: 40,
                              maxLines: 2,
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
      ),
    );
  }
}
