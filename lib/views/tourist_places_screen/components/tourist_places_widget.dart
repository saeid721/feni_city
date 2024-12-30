import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../global/constants/colors_resources.dart';
import '../../../../../global/constants/enum.dart';
import '../../../../../global/widget/global_container.dart';
import '../../../../../global/widget/global_image_loader.dart';
import '../../../../../global/widget/global_text.dart';
import '../../../global/widget/global_sizedbox.dart';

class FlatLandWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String date;
  final Function() onTap;
  const FlatLandWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.date,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: GlobalContainer(
        padding: const EdgeInsets.only(bottom: 10),
        margin: const EdgeInsets.only(bottom: 15),
        borderRadiusCircular: 10,
        borderColor: ColorRes.borderColor,
        elevation: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: Get.width,
              height: 190,
              child: GlobalImageLoader(
                imagePath: imagePath,
                fit: BoxFit.cover,
                imageFor: ImageFor.network,
              ),
            ),
            sizedBoxW(10),
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
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.calendar_month_rounded,
                        size: 18,
                        color: ColorRes.grey,
                      ),
                      GlobalText(
                        str: date,
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
