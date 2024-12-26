import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../global/constants/images.dart';
import '../../global/model.dart';
import '../../global/widget/custom_app_bar.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: GlobalAppBar(
            title: 'ডাক্তার',
            notiOnTap: (){},
          )),
      body: Column(
        children: [
          const SizedBox(height: 10),

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
                itemBuilder: (ctx, index){
                  return GestureDetector(
                      onTap: (){
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
                          case 3:
                            Get.to(()=> const DoctorScreen());
                            break;
                          case 4:
                            Get.to(()=> const DoctorScreen());
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
                            Get.to(()=> const DoctorScreen());
                            break;
                          case 15:
                            Get.to(()=> const DoctorScreen());
                            break;
                          case 16:
                            Get.to(()=> const DoctorScreen());
                            break;
                          case 17:
                            Get.to(()=> const DoctorScreen());
                            break;
                          case 18:
                            Get.to(()=> const DoctorScreen());
                            break;
                          case 19:
                            Get.to(()=> const DoctorScreen());
                            break;
                          case 20:
                            Get.to(()=> const DoctorScreen());
                            break;
                          case 21:
                            Get.to(()=> const DoctorScreen());
                            break;
                          case 22:
                            Get.to(()=> const DoctorScreen());
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
        ],
      ),
    );
  }
}
