import 'package:flutter/material.dart';
import '../../global/widget/custom_app_bar.dart';
import 'components/videos_widget.dart';

class VideosScreen extends StatefulWidget {
  const VideosScreen({super.key});

  @override
  State<VideosScreen> createState() => _VideosScreenState();
}

class _VideosScreenState extends State<VideosScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: GlobalAppBar(
          title: 'ভিডিও',
          notiOnTap: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListView.builder(
                itemCount: 7,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (ctx, index) {
                  return VideosWidget(
                    title: 'test',
                    thumbnailPath: 'https://img.youtube.com/vi/tNgXGowqSHc/maxresdefault.jpg',
                    videoUrl: 'https://www.youtube.com/watch?v=tNgXGowqSHc',
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
