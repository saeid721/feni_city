import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../../global/constants/colors_resources.dart';
import '../../../../../../global/widget/global_text.dart';
import '../../../global/constants/enum.dart';
import '../../../global/widget/global_container.dart';
import '../../../global/widget/global_image_loader.dart';
import '../../../global/widget/global_sizedbox.dart';

class CourierServicesWidget extends StatelessWidget {
  final String instituteName;
  final String phone;
  final String thana;
  final String address;
  final String imagePath;
  final String call;
  final String sms;
  final String map;

  final Function() onTap;
  const CourierServicesWidget({
    super.key,
    required this.instituteName,
    required this.phone,
    required this.thana,
    required this.address,
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

  Future<void> _openGoogleMap(BuildContext context, String instituteName, String address) async {
    final query = Uri.encodeComponent("$instituteName, $address");
    final geoUri = Uri.parse("https://www.google.com/maps/search/?api=1&query=$query");

    if (await canLaunchUrl(geoUri)) {
      await launchUrl(geoUri, mode: LaunchMode.externalApplication);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Unable to open Google Maps app.')),
      );
    }
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
        elevation: 1,
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
                            Icons.location_city,
                            size: 18,
                            color: ColorRes.primaryColor,
                          ),
                          sizedBoxW(5),
                          Flexible(
                            child: GlobalText(
                              str: instituteName,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.local_police_outlined,
                            size: 18,
                            color: ColorRes.primaryColor,
                          ),
                          sizedBoxW(5),
                          GlobalText(
                            str: thana,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: ColorRes.black,
                            overflow: TextOverflow.ellipsis,
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
                      imageFor: ImageFor.asset,
                      fit: BoxFit.fill,
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
                GestureDetector(
                  onTap: () => _openGoogleMap(context, instituteName, address ),
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
                          Icons.map,
                          size: 18,
                          color: ColorRes.red,
                        ),
                        sizedBoxW(5),
                        GlobalText(
                          str: map,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
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
