
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../global/constants/images.dart';
import '../../../global/constants/input_decoration.dart';
import '../../../global/widget/global_container.dart';
import '../../../global/widget/global_image_loader.dart';
import '../../../global/widget/global_sizedbox.dart';
import '../../../global/widget/global_textform_field.dart';
import '../../global/constants/colors_resources.dart';
import '../../global/widget/couple_text_button.dart';
import '../../global/widget/custom_app_bar.dart';
import '../../global/widget/global_button.dart';
import '../../global/widget/global_text.dart';
import '../home_screen.dart';
import 'signup_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailCon = TextEditingController();
  TextEditingController passCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: GlobalAppBar(
            title: 'সাইন ইন',
            notiOnTap: () {},
          ),
        ),
        body: GlobalContainer(
          height: size(context).height,
          width: size(context).width,
          color: Colors.white,
          child: SafeArea(
            child: Form(
              key: formKey,
              child: NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (overScroll) {
                  overScroll.disallowIndicator();
                  return true;
                },
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        sizedBoxH(40),
                        // Center(
                        //   child: GlobalImageLoader(
                        //     imagePath: Images.appLogo,
                        //     height: 140,
                        //     fit: BoxFit.fitWidth,
                        //   ),
                        // ),
                        GlobalText(
                          str: "Feni City",
                          color: ColorRes.primaryColor,
                          fontSize: 44,
                          fontWeight: FontWeight.w700,
                          textAlign: TextAlign.center,
                          fontFamily: 'Potta',
                        ),
                        sizedBoxH(40),
                        GlobalTextFormField(
                          controller: emailCon,
                          titleText: 'Email',
                          hintText: 'Enter Your Email',
                          decoration: borderDecoration,
                        ),
                        sizedBoxH(15),
                        GlobalTextFormField(
                          controller: passCon,
                          titleText: 'Password',
                          hintText: 'Enter Your Password',
                          decoration: borderDecoration,
                          isDense: true,
                          isPasswordField: true,
                        ),
                        sizedBoxH(20),
                        GlobalButtonWidget(
                            str: 'সাইন ইন',
                            height: 45,
                            onTap: (){
                              Get.to(()=> const HomeScreen());
                            }
                        ),
                        sizedBoxH(20),
                        GestureDetector(
                          onTap: () {
                            Get.to(()=> const SignUpScreen());
                          },
                          child: const Align(
                            alignment: Alignment.center,
                            child: CoupleTextButton(
                                firstText: "অ্যাকাউন্ট নেই?  ",
                                secondText: "নিবন্ধন করুন"),
                          ),
                        ),
                        sizedBoxH(20)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
    );
  }
}
