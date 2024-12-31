import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import '../../../../../global/constants/colors_resources.dart';
import '../../../../../global/constants/enum.dart';
import '../../../../../global/widget/global_container.dart';
import '../../../../../global/widget/global_image_loader.dart';
import '../../../../../global/widget/global_text.dart';
import '../../../global/widget/global_sizedbox.dart';

class LandDetailsWidget extends StatefulWidget {
  final String imagePath;
  final String title;
  final String phone;
  final String size;
  final String amount;
  final String address;
  final String details;
  const LandDetailsWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.phone,
    required this.size,
    required this.amount,
    required this.address,
    required this.details,
  });

  @override
  State<LandDetailsWidget> createState() => _LandDetailsWidgetState();
}

class _LandDetailsWidgetState extends State<LandDetailsWidget> {
  bool _showShareOptions = false;

  final List<Map<String, String>> _socialMedia = [
    {'icon': 'assets/icons/social_ic/facebook.png', 'platform': 'Facebook'},
    {'icon': 'assets/icons/social_ic/twitter.png', 'platform': 'Twitter'},
    {'icon': 'assets/icons/social_ic/instagram.png', 'platform': 'Instagram'},
    {'icon': 'assets/icons/social_ic/linkedin.png', 'platform': 'LinkedIn'},
    {'icon': 'assets/icons/social_ic/whatsapp.png', 'platform': 'WhatsApp'},
  ];

  void _shareToSocialMedia(String platform) {
    String shareContent = 'Check out this event: ${widget.title}';
    Share.share(shareContent, subject: 'Event Sharing');
  }

  @override
  Widget build(BuildContext context) {
    return GlobalContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: Get.width,
            height: 190,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: GlobalImageLoader(
                imagePath: widget.imagePath,
                fit: BoxFit.cover,
                imageFor: ImageFor.asset,
              ),
            ),
          ),

          sizedBoxH(5),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GlobalContainer(
                          padding: const EdgeInsets.all(6),
                          color: ColorRes.primaryColor.withOpacity(.20),
                          borderRadiusCircular: 10,
                          borderColor: ColorRes.primaryColor,
                          child: const Icon(
                            Icons.location_city,
                            size: 24,
                            color: ColorRes.primaryColor,
                          ),
                        ),
                        sizedBoxW(5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GlobalText(
                              str: "ব্যাক্তি/প্রতিস্ষ্ঠানের নাম",
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: ColorRes.textColor,
                            ),
                            GlobalText(
                              str: widget.title,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: ColorRes.textColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GlobalContainer(
                          padding: const EdgeInsets.all(6),
                          color: ColorRes.primaryColor.withOpacity(.20),
                          borderRadiusCircular: 10,
                          borderColor: ColorRes.primaryColor,
                          child: const Icon(
                            Icons.attach_money_outlined,
                            size: 24,
                            color: ColorRes.primaryColor,
                          ),
                        ),
                        sizedBoxW(5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GlobalText(
                              str: "সম্ভাব্য মূল্য",
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: ColorRes.textColor,
                            ),
                            GlobalText(
                              str: widget.amount,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: ColorRes.textColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GlobalContainer(
                          padding: const EdgeInsets.all(6),
                          color: ColorRes.primaryColor.withOpacity(.20),
                          borderRadiusCircular: 10,
                          borderColor: ColorRes.primaryColor,
                          child: const Icon(
                            Icons.phone,
                            size: 24,
                            color: ColorRes.primaryColor,
                          ),
                        ),
                        sizedBoxW(5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GlobalText(
                              str: "মোবাইল",
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: ColorRes.textColor,
                            ),
                            GlobalText(
                              str: widget.phone,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: ColorRes.textColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GlobalContainer(
                          padding: const EdgeInsets.all(6),
                          color: ColorRes.primaryColor.withOpacity(.20),
                          borderRadiusCircular: 10,
                          borderColor: ColorRes.primaryColor,
                          child: const Icon(
                            Icons.crop_landscape,
                            size: 24,
                            color: ColorRes.primaryColor,
                          ),
                        ),
                        sizedBoxW(5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GlobalText(
                              str: "সাইজ",
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: ColorRes.textColor,
                            ),
                            GlobalText(
                              str: widget.size,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: ColorRes.textColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          sizedBoxH(1),
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start ,
                children: [
                  GlobalContainer(
                    padding: const EdgeInsets.all(6),
                    color: ColorRes.primaryColor.withOpacity(.20),
                    borderRadiusCircular: 10,
                    borderColor: ColorRes.primaryColor,
                    child: const Icon(
                      Icons.description_outlined,
                      size: 24,
                      color: ColorRes.primaryColor,
                    ),
                  ),
                  sizedBoxW(5),
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GlobalText(
                            str: "বিস্তারিতঃ",
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: ColorRes.textColor,
                          ),
                          GlobalText(
                            str: widget.details,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: ColorRes.textColor,
                            textAlign: TextAlign.justify,
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          sizedBoxH(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: const GlobalContainer(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        size: 22,
                        color: ColorRes.grey,
                      ),
                      Text(
                        'Go Back',
                        style: TextStyle(color: ColorRes.grey),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _showShareOptions = !_showShareOptions;
                  });
                },
                child: const GlobalContainer(
                  color: ColorRes.primaryColor,
                  borderRadiusCircular: 50,
                  padding: EdgeInsets.all(10),
                  elevation: 2,
                  height: 50,
                  width: 50,
                  child: Icon(
                    Icons.share,
                    size: 30,
                    color: ColorRes.white,
                  ),
                ),
              ),
            ],
          ),
          if (_showShareOptions) ...[
            Wrap(
              spacing: 5,
              children: _socialMedia.map((social) {
                return GestureDetector(
                  onTap: () {
                    _shareToSocialMedia(social['platform']!);
                  },
                  child: Image.asset(
                    social['icon']!,
                    width: 35,
                    height: 35,
                    //color: ColorRes.primaryColor,
                  ),
                );
              }).toList(),
            ),
          ],
          sizedBoxH(35),
        ],
      ),
    );
  }
}
