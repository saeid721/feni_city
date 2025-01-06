
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../global/constants/colors_resources.dart';
import '../../../global/constants/images.dart';
import '../../../global/widget/global_image_loader.dart';
import '../../../global/widget/global_text.dart';
import '../global/constants/enum.dart';
import '../global/widget/global_button.dart';

class AppExitDialog extends StatelessWidget {
  final String title;
  final String message;
  final Function() onTap;

  const AppExitDialog({
    super.key,
    required this.title,
    required this.message,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: ColorRes.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 15),
      content: SizedBox(
        width: Get.width,
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overScroll) {
            overScroll.disallowIndicator();
            return true;
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                // const SizedBox(height: 20),
                // GlobalImageLoader(
                //   imagePath: Images.warningIc,
                //   height: 50,
                //   width: 50,
                //   imageFor: ImageFor.asset,
                // ),
                // const SizedBox(height: 10),
                // // Title
                // GlobalText(
                //   str: title,
                //   fontSize: 18,
                //   fontWeight: FontWeight.bold,
                //   textAlign: TextAlign.center,
                //   color: ColorRes.black,
                // ),

                const SizedBox(height: 10),
                // Message
                GlobalText(
                  str: message,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  textAlign: TextAlign.center,
                  color: ColorRes.grey,
                ),

                const SizedBox(height: 30),
                Row(
                  children: [

                    const SizedBox(width: 10),
                    Expanded(
                      child: GlobalButtonWidget(
                        str: 'না',
                        height: 40,
                        radius: 8,
                        textSize: 14,
                        textColor: ColorRes.red,
                        buttomColor: Colors.transparent,
                        borderColor: ColorRes.red,
                        onTap: (){
                          Navigator.pop(context);
                        },
                      ),
                    ),

                    const SizedBox(width: 10),
                    Expanded(
                      child: GlobalButtonWidget(
                        str: 'হ্যাঁ',
                        height: 40,
                        radius: 8,
                        textSize: 14,
                        buttomColor: ColorRes.primaryColor,
                        onTap: onTap,
                      ),
                    ),

                    const SizedBox(width: 10),
                  ],
                ),

                const SizedBox(width: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
