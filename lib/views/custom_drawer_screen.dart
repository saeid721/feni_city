import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../global/constants/images.dart';
import '../../../../../global/model.dart';
import '../../../../../global/widget/global_container.dart';
import '../../../../../global/widget/global_image_loader.dart';
import '../../../../../global/widget/global_text.dart';
import '../global/constants/colors_resources.dart';
import 'bus_screen/bus_web_view_screen.dart';
import 'doctor_screen/doctor_screen.dart';
import 'hospital_screen/hospital_screen.dart';

class CustomDrawerScreen extends StatefulWidget {
  const CustomDrawerScreen({super.key});

  @override
  State<CustomDrawerScreen> createState() => _CustomDrawerScreenState();
}

class _CustomDrawerScreenState extends State<CustomDrawerScreen> {

  int isClick = 0;
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
  ];

  @override
  Widget build(BuildContext context) {
      return Drawer(
        child: GlobalContainer(
          height: Get.height,
          width: Get.width,
          color: ColorRes.primaryColor,
          child: Column(
            children: [
              Container(
                width: Get.width,
                color: ColorRes.primaryColor,
                padding: const EdgeInsets.only(left: 20, right: 10, top: 60, bottom: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child:
                  // GlobalImageLoader(
                  //     imagePath: Images.appLogo,
                  //     imageFor: ImageFor.asset,
                  //     height: 60,
                  //     fit: BoxFit.fitHeight
                  // ),
                  GlobalText(
                    str: "Feni City",
                    color: ColorRes.grey,
                    fontSize: 44,
                    fontWeight: FontWeight.w700,
                    textAlign: TextAlign.center,
                    fontFamily: 'Potta',
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  child: ListView.builder(
                      itemCount: menuItem.length,
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      shrinkWrap: true,
                      itemBuilder: (ctx, index){
                        return GestureDetector(
                          onTap: () async{
                            setState(() {
                              isClick = index;
                            });
                            log('Index: $index');
                            switch(index){
                              case 0:
                                Get.to(()=> const DoctorScreen());
                                break;
                              case 1:
                                Get.to(()=> const DoctorScreen());
                                break;
                              case 2:
                                Get.to(()=> const DoctorScreen());
                                break;
                            }

                          },
                          child: Container(
                            width: Get.width,
                            margin: const EdgeInsets.only(bottom: 5),
                            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              // color: isClick == index ? ColorRes.shoesPrimaryColor : Colors.transparent,
                              color: isClick == index ? ColorRes.primaryColor : Colors.transparent
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GlobalImageLoader(
                                  imagePath: menuItem[index].img,
                                  height: 20,
                                  width: 20,
                                  fit: BoxFit.fill,
                                ),
                                const SizedBox(width: 10),
                                GlobalText(
                                  str: menuItem[index].text,
                                  color: isClick == index ? ColorRes.white : ColorRes.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Rubik',
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                  ),
                ),
              )
            ],
          ),
        ),
      );
  }
}
