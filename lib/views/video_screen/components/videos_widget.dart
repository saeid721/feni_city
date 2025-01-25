import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../global/constants/colors_resources.dart';
import '../../../../../global/constants/enum.dart';
import '../../../../../global/widget/global_container.dart';
import '../../../../../global/widget/global_image_loader.dart';
import '../../../../../global/widget/global_text.dart';
import '../../../global/widget/global_sizedbox.dart';

class VideosWidget extends StatelessWidget {
  final String thumbnailPath;
  final String title;
  final String videoUrl;

  const VideosWidget({
    super.key,
    required this.thumbnailPath,
    required this.title,
    required this.videoUrl,
  });

  // Function to launch the YouTube URL
  Future<void> _launchYouTubeVideo(String url) async {
    final Uri urlUri = Uri.parse(url);
    if (!await launchUrl(
      urlUri,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _launchYouTubeVideo(videoUrl);
      },
      child: GlobalContainer(
        margin: const EdgeInsets.only(bottom: 15),
        borderRadiusCircular: 10,
        borderColor: ColorRes.primaryColor,
        borderWidth: .3,
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.info_outline,
                    size: 18,
                    color: ColorRes.grey,
                  ),
                  sizedBoxW(5),
                  Expanded(
                    child: GlobalText(
                      str: title,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      maxLines: 2,
                      color: ColorRes.primaryColor,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: Get.width,
                height: 190,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    GlobalImageLoader(
                      imagePath: thumbnailPath,
                      fit: BoxFit.fill,
                      imageFor: ImageFor.network,
                    ),
                    // Play icon overlay
                    Icon(
                      Icons.play_circle_outline,
                      color: Colors.white.withAlpha((0.70 * 255).toInt()),
                      size: 70,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
