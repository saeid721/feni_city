import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../global/constants/colors_resources.dart';
import '../../global/constants/images.dart';
import '../../global/widget/global_image_loader.dart';
import '../../global/widget/global_sizedbox.dart';
import '../../global/widget/global_text.dart';

class GlobalAuthAppBar extends StatelessWidget {
  const GlobalAuthAppBar({
    super.key,
    required this.title,
    this.titleColor,
    this.onTap
  });
  final String title;
  final Color? titleColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Stack(
            children: [
              SizedBox(height: 80, width: size(context).width),
              Positioned(
                left: 10,
                bottom: 0,
                child: GestureDetector(
                  onTap: onTap,
                  child: SizedBox(
                    height: 80,
                    child: Center(
                      child: GlobalImageLoader(
                        imagePath: Images.backImg,
                        height: 22,
                        width: 15,
                        fit: BoxFit.fitHeight,
                        color: titleColor ?? ColorRes.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
                child: Center(
                  child: GlobalText(
                    str: title,
                    color: titleColor ?? ColorRes.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    textAlign: TextAlign.center,
                    fontFamily: 'Potta',
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}


class GlobalAppBar extends StatelessWidget {
  const GlobalAppBar({
    super.key,
    required this.title,
    this.isBackIc = true,
    this.backColor,
    this.leading,
    this.actions,
    required this.notiOnTap
  });
  final String title;
  final Color? backColor;
  final bool? isBackIc;
  final Widget? leading;
  final Function() notiOnTap;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: backColor ?? ColorRes.primaryColor,
        automaticallyImplyLeading: false,
        leading: leading ?? (isBackIc == true ? IconButton(
          splashRadius: 0.1,
          icon: const Icon(Icons.arrow_back, color: ColorRes.white),
          onPressed: (){
            Get.back();
          },
        ) : const SizedBox.shrink()),
        centerTitle: true,
        title: GlobalText(
          str: title,
          color: ColorRes.white,
          fontSize: 22,
          fontWeight: FontWeight.w700,
          textAlign: TextAlign.center,
          fontFamily: 'Potta',
        ),
        actions: actions
    );
  }
}