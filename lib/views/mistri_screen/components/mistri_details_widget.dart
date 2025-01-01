import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../../global/constants/colors_resources.dart';
import '../../../../../../global/widget/global_text.dart';
import '../../../global/constants/enum.dart';
import '../../../global/widget/global_container.dart';
import '../../../global/widget/global_image_loader.dart';
import '../../../global/widget/global_sizedbox.dart';

class MistriDetailsWidget extends StatelessWidget {
  final String name;
  final String designation;
  final String phone;
  final String services;
  final String address;
  final String imagePath;
  final String call;
  final String sms;
  final String map;

  final Function() onTap;
  const MistriDetailsWidget({
    super.key,
    required this.name,
    required this.designation,
    required this.phone,
    required this.address,
    required this.services,
    required this.imagePath,
    required this.call,
    required this.sms,
    required this.map,
    required this.onTap,
  });

  Future<void> _makePhoneCall(String phone) async {
    final Uri launchUri = Uri(scheme: 'tel', path: phone);
    await launchUrl(launchUri);
  }

  Future<void> _sendSMS(String phone) async {
    final Uri smsUri = Uri(scheme: 'sms', path: phone);
    await launchUrl(smsUri);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: GlobalContainer(
        padding: const EdgeInsets.only(left: 15, right: 5, top: 15, bottom: 15),
        margin: const EdgeInsets.only(bottom: 15, top: 5, right: 5),
        borderRadiusCircular: 10,
        borderColor: ColorRes.borderColor,
        elevation: 2,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.person_pin_outlined,
                            size: 18,
                            color: ColorRes.primaryColor,
                          ),
                          sizedBoxW(5),
                          GlobalText(
                            str: name,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: ColorRes.textColor,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
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
                            str: designation,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: ColorRes.textColor,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.phone,
                            size: 18,
                            color: ColorRes.primaryColor,
                          ),
                          sizedBoxW(5),
                          GlobalText(
                            str: phone,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: ColorRes.textColor,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.security_rounded,
                            size: 18,
                            color: ColorRes.primaryColor,
                          ),
                          sizedBoxW(5),
                          Flexible(
                            child: GlobalText(
                              str: services,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: ColorRes.textColor,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            size: 18,
                            color: ColorRes.primaryColor,
                          ),
                          sizedBoxW(5),
                          Flexible(
                            child: GlobalText(
                              str: address,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: ColorRes.textColor,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    child: GlobalImageLoader(
                      imagePath: imagePath,
                      width: 80,
                      height: 80,
                      imageFor: ImageFor.asset,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => _makePhoneCall(phone),
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 2, bottom: 2),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorRes.primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.person_pin_outlined,
                          size: 18,
                          color: ColorRes.red,
                        ),
                        sizedBoxW(5),
                        GlobalText(
                          str: call,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: ColorRes.primaryColor,
                        ),
                      ],
                    ),
                  ),
                ),
                sizedBoxW(10),
                GestureDetector(
                  onTap: () => _sendSMS(phone),
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 2, bottom: 2),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorRes.primaryColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.home_repair_service,
                          size: 18,
                          color: ColorRes.red,
                        ),
                        sizedBoxW(5),
                        GlobalText(
                          str: sms,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          maxLines: 2,
                          color: ColorRes.primaryColor,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
                sizedBoxW(10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
