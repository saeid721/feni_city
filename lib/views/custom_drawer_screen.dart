import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../global/constants/images.dart';
import '../../../../../global/model.dart';
import '../../../../../global/widget/global_container.dart';
import '../../../../../global/widget/global_image_loader.dart';
import '../../../../../global/widget/global_text.dart';
import '../global/constants/colors_resources.dart';
import 'contact_screen/contact_screen.dart';
import 'home_screen.dart';
import 'notification_screen/notification_screen.dart';
import 'privacy_policy_screen/privacy_policy_screen.dart';
import 'profile_screen/profile_screen.dart';

class CustomDrawerScreen extends StatefulWidget {
  const CustomDrawerScreen({super.key});

  @override
  State<CustomDrawerScreen> createState() => _CustomDrawerScreenState();
}

class _CustomDrawerScreenState extends State<CustomDrawerScreen> {

  int isClick = 0;
  List<GlobalMenuModel> menuItem = [
    GlobalMenuModel(img: Images.homeInc, text: 'হোম'),
    GlobalMenuModel(img: Images.contactInc, text: 'যোগাযোগ'),
    GlobalMenuModel(img: Images.userInc, text: 'প্রোফাইল'),
    GlobalMenuModel(img: Images.notificationInc, text: 'নোটিফিকেশন'),
    GlobalMenuModel(img: Images.share, text: 'শেয়ার করুন'),
    GlobalMenuModel(img: Images.rating, text: 'রেটিং দিন'),
    GlobalMenuModel(img: Images.privacyPolicy, text: 'গোপনীয়তা নীতি'),
  ];

  @override
  Widget build(BuildContext context) {
      return Drawer(
        child: GlobalContainer(
          height: Get.height,
          width: Get.width,
          color: ColorRes.white,
          child: Column(
            children: [
              Container(
                width: Get.width,
                color: ColorRes.primaryColor,
                padding: const EdgeInsets.only(left: 20, right: 10, top: 60, bottom: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child:
                  // GlobalImageLoader(
                  //     imagePath: Images.appLogo,
                  //     imageFor: ImageFor.asset,
                  //     height: 60,
                  //     fit: BoxFit.fitHeight
                  // ),
                  GlobalText(
                    str: "Feni City",
                    color: ColorRes.white,
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
                                Get.to(()=> const HomeScreen());
                                break;
                              case 1:
                                Get.to(()=> const ContactScreen());
                                break;
                              case 2:
                                Get.to(()=> const ProfileScreen());
                                break;
                              case 3:
                                Get.to(()=> const NotificationScreen());
                                break;
                              case 4:
                               // Get.to(()=> const HomeScreen());
                                break;
                              case 5:
                                //Get.to(()=> const HomeScreen());
                                break;
                              case 6:
                                Get.to(()=> const PrivacyPolicyScreen());
                                break;
                            }

                          },
                          child: Container(
                            width: Get.width,
                            margin: const EdgeInsets.only(bottom: 5),
                            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: isClick == index ? ColorRes.primaryColor : Colors.white
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GlobalImageLoader(
                                  imagePath: menuItem[index].img,
                                  height: 20,
                                  width: 20,
                                  fit: BoxFit.fill,
                                    color: isClick == index ? Colors.white : ColorRes.primaryColor
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
