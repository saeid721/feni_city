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
  final String vacancy;
  final String jobType;
  final String experienceYear;
  final String applicationDeadline;
  final String salary;
  final String educationalQualification;
  final String additionalRequired;
  final String responsibilities;
  final String details;
  final String jobLocation;
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
      child: SingleChildScrollView( // Added SingleChildScrollView to handle overflow
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.home_repair_service,
                  size: 18,
                  color: ColorRes.primaryColor,
                ),
                sizedBoxW(5),
                GlobalText(
                  str: widget.jobTitle,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: ColorRes.textColor,
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.location_city,
                  size: 18,
                  color: ColorRes.primaryColor,
                ),
                sizedBoxW(5),
                GlobalText(
                  str: widget.companyName,
                  fontWeight: FontWeight.w500,
                  color: ColorRes.textColor,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.phone,
                        size: 18,
                        color: ColorRes.primaryColor,
                      ),
                      sizedBoxW(5),
                      GlobalText(
                        str: widget.phone,
                        color: ColorRes.textColor,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.mail_outline,
                        size: 18,
                        color: ColorRes.primaryColor,
                      ),
                      sizedBoxW(5),
                      GlobalText(
                        str: widget.email,
                        color: ColorRes.textColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.mail_outline,
                        size: 18,
                        color: ColorRes.primaryColor,
                      ),
                      sizedBoxW(5),
                      GlobalText(
                        str: widget.jobType,
                        color: ColorRes.textColor,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.mail_outline,
                        size: 18,
                        color: ColorRes.primaryColor,
                      ),
                      sizedBoxW(5),
                      GlobalText(
                        str: widget.vacancy,
                        color: ColorRes.textColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.mail_outline,
                        size: 18,
                        color: ColorRes.primaryColor,
                      ),
                      sizedBoxW(5),
                      GlobalText(
                        str: widget.experienceYear,
                        color: ColorRes.textColor,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.mail_outline,
                        size: 18,
                        color: ColorRes.primaryColor,
                      ),
                      sizedBoxW(5),
                      GlobalText(
                        str: widget.applicationDeadline,
                        color: ColorRes.textColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                GlobalText(
                  str: "Salary: ",
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
            Row(
              children: [
                GlobalText(
                  str: "Educational Qualification: ",
                  fontWeight: FontWeight.w600,
                  color: ColorRes.textColor,
                ),
                GlobalText(
                  str: widget.educationalQualification,
                  color: ColorRes.textColor,
                ),
              ],
            ),
            Row(
              children: [
                GlobalText(
                  str: "Additional Required: ",
                  fontWeight: FontWeight.w600,
                  color: ColorRes.textColor,
                ),
                GlobalText(
                  str: widget.additionalRequired,
                  color: ColorRes.textColor,
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GlobalText(
                  str: "Responsibilities",
                  fontWeight: FontWeight.w600,
                  color: ColorRes.textColor,
                ),
                Flexible(
                  child: GlobalText(
                    str: widget.responsibilities,
                    color: ColorRes.textColor,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GlobalText(
                  str: "Details",
                  fontWeight: FontWeight.w600,
                  color: ColorRes.textColor,
                ),
                Flexible(
                  child: Expanded(
                    child: GlobalText(
                      str: widget.details,
                      color: ColorRes.textColor,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                GlobalText(
                  str: "Job Location: ",
                  fontWeight: FontWeight.w600,
                  color: ColorRes.textColor,
                ),
                GlobalText(
                  str: widget.jobLocation,
                  color: ColorRes.textColor,
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GlobalText(
                  str: "বিস্তারিতঃ",
                  fontWeight: FontWeight.w600,
                  color: ColorRes.textColor,
                ),
                Flexible(
                  child: Expanded(
                    child: GlobalText(
                      str: widget.details,
                      color: ColorRes.textColor,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ],
            ),

            sizedBoxH(10),
            GlobalContainer(
              margin: EdgeInsets.only(left: 5, right: 5),
              padding: const EdgeInsets.all(10),
              borderRadiusCircular: 10,
              borderColor: ColorRes.red,
              borderWidth: .5,
              color: ColorRes.pink100.withOpacity(0.03),
              child: RichText(
                textAlign: TextAlign.justify,  // Align the text to the left
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.warning_amber,
                        size: 16,
                        color: Colors.red,
                      ),
                    ),
                    WidgetSpan(
                      child: SizedBox(width: 5), // Space between the icon and the text
                    ),
                    TextSpan(
                      text: widget.warning,
                      style: TextStyle(fontSize: 10,
                        color: ColorRes.black,),
                    ),
                  ],
                ),
              ),
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
                    ),
                  );
                }).toList(),
              ),
            ],
            sizedBoxH(35),
          ],
        ),
      ),
    );
  }
}