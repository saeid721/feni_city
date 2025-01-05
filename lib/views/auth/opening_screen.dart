import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../global/constants/colors_resources.dart';
import '../../../global/constants/images.dart';
import '../../../global/widget/global_container.dart';
import '../../../global/widget/global_image_loader.dart';
import '../../../global/widget/global_sizedbox.dart';
import '../../global/widget/global_button.dart';
import '../../global/widget/global_text.dart';
import 'signin_screen.dart';
import 'signup_screen.dart';

class OpeningScreen extends StatefulWidget {
  const OpeningScreen({super.key});

  @override
  State<OpeningScreen> createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: GlobalContainer(
          height: size(context).height,
          width: size(context).width,
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  width: size(context).width,
                  color: ColorRes.primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: GlobalImageLoader(
                            imagePath: Images.appLogo,
                            height: 100,
                            width: 100,
                            color: ColorRes.white,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        sizedBoxH(20),
                        const GlobalText(
                          str: "WELCOME TO Feni City",
                          color: ColorRes.white,
                          fontSize: 18,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(child: Container()),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    GlobalButtonWidget(
                      str: 'REGISTRATION',
                      height: 45,
                      onTap: (){
                        Get.to(()=> const SignUpScreen());
                      },
                    ),
                    sizedBoxH(10),
                    GlobalButtonWidget(
                      str: 'SIGN IN',
                      height: 45,
                      buttomColor: Colors.white,
                      textColor: ColorRes.primaryColor,
                      borderColor: ColorRes.primaryColor,
                      onTap: (){
                        Get.to(()=> const SignInScreen());
                      },
                    ),
                    sizedBoxH(20),
                  ],
                ),
              )

            ],
          ),
        )
    );
  }
}
