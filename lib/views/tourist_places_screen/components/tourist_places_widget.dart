import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../global/constants/colors_resources.dart';
import '../../../../../global/constants/enum.dart';
import '../../../../../global/widget/global_container.dart';
import '../../../../../global/widget/global_image_loader.dart';
import '../../../../../global/widget/global_text.dart';
import '../../../global/widget/global_sizedbox.dart';

class TouristPlacesWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String address;
  final String map;
  final Function() onTap;
  const TouristPlacesWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.address,
    required this.map,
    required this.onTap,
  });


  Future<void> _openGoogleMap(BuildContext context, String title, String address) async {
    final query = Uri.encodeComponent("$title, $address");
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
        padding: const EdgeInsets.only(bottom: 10),
        margin: const EdgeInsets.only(bottom: 15),
        borderRadiusCircular: 10,
        borderColor: ColorRes.primaryColor,
        borderWidth: .3,
        elevation: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                  child: GlobalText(
                    str: title,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    maxLines: 2,
                    color: ColorRes.primaryColor,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                GestureDetector(
                  onTap: () => _openGoogleMap(context, title, address ),
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 2, bottom: 2),
                    // decoration: BoxDecoration(
                    //   border: Border.all(
                    //     color: ColorRes.primaryColor,
                    //     width: 1.0,
                    //   ),
                    //   borderRadius: BorderRadius.circular(30),
                    //   color: Colors.white,
                    // ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GlobalText(
                          str: map,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: ColorRes.primaryColor,
                          overflow: TextOverflow.ellipsis,
                        ),
                        sizedBoxW(5),
                        const Icon(
                          Icons.map,
                          size: 18,
                          color: ColorRes.red,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            sizedBoxH(5),
            SizedBox(
              width: Get.width,
              height: 190,
              child: GlobalImageLoader(
                imagePath: imagePath,
                fit: BoxFit.cover,
                imageFor: ImageFor.asset,
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        size: 18,
                        color: ColorRes.grey,
                      ),
                      GlobalText(
                        str: address,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: ColorRes.grey,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),

                  const Icon(
                    Icons.arrow_forward,
                    size: 22,
                    color: ColorRes.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
