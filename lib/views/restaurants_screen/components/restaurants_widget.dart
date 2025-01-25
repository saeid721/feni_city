import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../../global/constants/colors_resources.dart';
import '../../../../../../global/widget/global_text.dart';
import '../../../global/constants/enum.dart';
import '../../../global/widget/global_container.dart';
import '../../../global/widget/global_image_loader.dart';
import '../../../global/widget/global_sizedbox.dart';

class RestaurantsWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String phone;
  final String address;
  final String call;
  final String sms;
  final String map;

  final Function() onTap;
  const RestaurantsWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.phone,
    required this.address,
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
    final query = Uri.encodeComponent(" $instituteName, $address");
    final geoUri = Uri.parse("https://www.google.com/maps/search/?api=1&query=$query");

    if (await canLaunchUrl(geoUri)) {
      await launchUrl(geoUri, mode: LaunchMode.externalApplication);
    } else {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Unable to open Google Maps app.')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: GlobalContainer(
        padding: const EdgeInsets.only(bottom: 15),
        margin: const EdgeInsets.only(bottom: 15,),
        borderRadiusCircular: 10,
        borderColor: ColorRes.primaryColor,
        borderWidth: .3,
        elevation: 3,
        child: Column(
          children: [
            SizedBox(
              width: Get.width,
              height: 190,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: GlobalImageLoader(
                  imagePath: imagePath,
                  fit: BoxFit.cover,
                  imageFor: ImageFor.asset,
                ),
              ),
            ),

            sizedBoxH(5),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8),
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
                          str: title,
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
            sizedBoxH(10),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8),
              child: const Divider(),
            ),
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
                  onTap: () => _openGoogleMap(context, title, address ),
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
