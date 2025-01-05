import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import '../../../../../global/constants/colors_resources.dart';
import '../../../../../global/constants/enum.dart';
import '../../../../../global/widget/global_container.dart';
import '../../../../../global/widget/global_image_loader.dart';
import '../../../../../global/widget/global_text.dart';
import '../../../global/widget/global_sizedbox.dart';

class JobDetailsWidget extends StatefulWidget {
  final String imagePath;
  final String jobTitle;
  final String companyName;
  final String phone;
  final String email;
  final String educationalQualification;
  final String additionalRequired;
  final String responsibilities;
  final String experienceYear;
  final String jobType;
  final String salary;
  final String jobLocation;
  final String details;
  final String vacancy;
  final String applicationDeadline;
  final String warning;
  const JobDetailsWidget({
    super.key,
    required this.imagePath,
    required this.jobTitle,
    required this.phone,
    required this.educationalQualification,
    required this.companyName,
    required this.email,
    required this.additionalRequired,
    required this.vacancy,
    required this.applicationDeadline,
    required this.warning,
    required this.responsibilities,
    required this.experienceYear,
    required this.jobType,
    required this.salary,
    required this.jobLocation,
    required this.details,
  });

  @override
  State<JobDetailsWidget> createState() => _JobDetailsWidgetState();
}

class _JobDetailsWidgetState extends State<JobDetailsWidget> {
  bool _showShareOptions = false;

  final List<Map<String, String>> _socialMedia = [
    {'icon': 'assets/icons/social_ic/facebook.png', 'platform': 'Facebook'},
    {'icon': 'assets/icons/social_ic/twitter.png', 'platform': 'Twitter'},
    {'icon': 'assets/icons/social_ic/instagram.png', 'platform': 'Instagram'},
    {'icon': 'assets/icons/social_ic/linkedin.png', 'platform': 'LinkedIn'},
    {'icon': 'assets/icons/social_ic/whatsapp.png', 'platform': 'WhatsApp'},
  ];

  void _shareToSocialMedia(String platform) {
    String shareContent = 'Check out this event: ${widget.jobTitle}';
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
                          color: ColorRes.primaryColor.withAlpha((0.20 * 255).toInt()),
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
                              str: widget.jobTitle,
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
                          color: ColorRes.primaryColor.withAlpha((0.20 * 255).toInt()),
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
                              str: widget.salary,
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
                          color: ColorRes.primaryColor.withAlpha((0.20 * 255).toInt()),
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
                          color: ColorRes.primaryColor.withAlpha((0.20 * 255).toInt()),
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
                              str: widget.educationalQualification,
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
                          color: ColorRes.primaryColor.withAlpha((0.20 * 255).toInt()),
                          borderRadiusCircular: 10,
                          borderColor: ColorRes.primaryColor,
                          child: const Icon(
                            Icons.bedroom_child_outlined,
                            size: 24,
                            color: ColorRes.primaryColor,
                          ),
                        ),
                        sizedBoxW(5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GlobalText(
                              str: "বেডরুম",
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: ColorRes.textColor,
                            ),
                            GlobalText(
                              str: widget.companyName,
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
                          color: ColorRes.primaryColor.withAlpha((0.20 * 255).toInt()),
                          borderRadiusCircular: 10,
                          borderColor: ColorRes.primaryColor,
                          child: const Icon(
                            Icons.bathroom_outlined,
                            size: 24,
                            color: ColorRes.primaryColor,
                          ),
                        ),
                        sizedBoxW(5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GlobalText(
                              str: "বাথরুম",
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: ColorRes.textColor,
                            ),
                            GlobalText(
                              str: widget.email,
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
                          color: ColorRes.primaryColor.withAlpha((0.20 * 255).toInt()),
                          borderRadiusCircular: 10,
                          borderColor: ColorRes.primaryColor,
                          child: const Icon(
                            Icons.checkroom_outlined,
                            size: 24,
                            color: ColorRes.primaryColor,
                          ),
                        ),
                        sizedBoxW(5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GlobalText(
                              str: "বেলকুনি",
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: ColorRes.textColor,
                            ),
                            GlobalText(
                              str: widget.additionalRequired,
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
                          color: ColorRes.primaryColor.withAlpha((0.20 * 255).toInt()),
                          borderRadiusCircular: 10,
                          borderColor: ColorRes.primaryColor,
                          child: const Icon(
                            Icons.kitchen,
                            size: 24,
                            color: ColorRes.primaryColor,
                          ),
                        ),
                        sizedBoxW(5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GlobalText(
                              str: "কিচেন রুম",
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: ColorRes.textColor,
                            ),
                            GlobalText(
                              str: widget.vacancy,
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
                          color: ColorRes.primaryColor.withAlpha((0.20 * 255).toInt()),
                          borderRadiusCircular: 10,
                          borderColor: ColorRes.primaryColor,
                          child: const Icon(
                            Icons.apartment,
                            size: 24,
                            color: ColorRes.primaryColor,
                          ),
                        ),
                        sizedBoxW(5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GlobalText(
                              str: "কম্প্লেশন স্টেটাস",
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: ColorRes.textColor,
                            ),
                            GlobalText(
                              str: widget.applicationDeadline,
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
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GlobalContainer(
                          padding: const EdgeInsets.all(6),
                          color: ColorRes.primaryColor.withAlpha((0.20 * 255).toInt()),
                          borderRadiusCircular: 10,
                          borderColor: ColorRes.primaryColor,
                          child: const Icon(
                            Icons.landscape_outlined,
                            size: 24,
                            color: ColorRes.primaryColor,
                          ),
                        ),
                        sizedBoxW(5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GlobalText(
                              str: "ল্যান্ড শেয়ার",
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: ColorRes.textColor,
                            ),
                            GlobalText(
                              str: widget.responsibilities,
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
                          color: ColorRes.primaryColor.withAlpha((0.20 * 255).toInt()),
                          borderRadiusCircular: 10,
                          borderColor: ColorRes.primaryColor,
                          child: const Icon(
                            Icons.apartment,
                            size: 24,
                            color: ColorRes.primaryColor,
                          ),
                        ),
                        sizedBoxW(5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GlobalText(
                              str: "ফ্লোর",
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: ColorRes.textColor,
                            ),
                            GlobalText(
                              str: widget.jobType,
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
                          color: ColorRes.primaryColor.withAlpha((0.20 * 255).toInt()),
                          borderRadiusCircular: 10,
                          borderColor: ColorRes.primaryColor,
                          child: const Icon(
                            Icons.landscape_outlined,
                            size: 24,
                            color: ColorRes.primaryColor,
                          ),
                        ),
                        sizedBoxW(5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GlobalText(
                              str: "অবস্থান",
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: ColorRes.textColor,
                            ),
                            GlobalText(
                              str: widget.experienceYear,
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GlobalContainer(
                    padding: const EdgeInsets.all(6),
                    color: ColorRes.red.withAlpha((0.10 * 255).toInt()),
                    borderRadiusCircular: 10,
                    borderColor: ColorRes.primaryColor,
                    child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GlobalText(
                          str: "রিপোর্ট / কোম্পানি",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: ColorRes.textColor,
                        ),
                        GlobalText(
                          str: "এই চাকরির জন্য বিজ্ঞাপন দাতা প্রতিষ্ঠান আপনার কাছ থেকে কোন অর্থ চাইলে অথবা কোন ধরনের ভুল বা বিভ্রান্তিকর তথ্য দিলে অতি সত্ত্বর আমাদেরকে জানান অথবা জবটি রিপোর্ট করুন। চাকরি পাওয়ার জন্য কোন ব্যাক্তি / প্রতিষ্ঠানকে অর্থ প্রদান করবেন না। কোন প্রকার অর্থ লেনদেনের দায়িত্ব বিডিজবস বহন করবে না।",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: ColorRes.textColor,
                        ),

                        Column(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.phone,
                                  size: 18,
                                  color: ColorRes.primaryColor,
                                ),
                                GlobalText(
                                  str: "01757-769498",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: ColorRes.textColor,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.mail_outline,
                                  size: 18,
                                  color: ColorRes.primaryColor,
                                ),
                                GlobalText(
                                  str: "info@stitbd.com",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: ColorRes.textColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                        // GlobalText(
                        //   str: widget.warning,
                        //   fontSize: 14,
                        //   fontWeight: FontWeight.w400,
                        //   color: ColorRes.textColor,
                        // ),
                      ],
                    ),
                  ),
                  sizedBoxW(5),
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
                    color: ColorRes.primaryColor.withAlpha((0.20 * 255).toInt()),
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
