import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../global/constants/colors_resources.dart';
import '../../global/widget/custom_app_bar.dart';
import '../notification_screen/notification_screen.dart';
import 'components/privacy_policy_widget.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
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
          title: 'গোপনীয়তা নীতি',
          notiOnTap: () {},
          actions: [
            IconButton(
              onPressed: () {
                Get.to(() => NotificationScreen());
              },
              icon: const Icon(Icons.notifications_on_rounded, color: ColorRes.white,),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              PrivacyPolicyWidget(
                title: 'ফেনী অ্যাপের গোপনীয়তা নীতি',
                text:
                    """এই গোপনীয়তা নীতি আমাদের নীতি এবং পদ্ধতিগুলি বর্ণনা করে যেগুলি আমরা আপনার তথ্য সংগ্রহ, ব্যবহার এবং প্রকাশ করার সময় অনুসরণ করি। এটি আপনার গোপনীয়তার অধিকার এবং আইন কীভাবে আপনাকে সুরক্ষিত করে তা জানায়।

আমরা আমাদের পরিষেবা উন্নত করার জন্য আপনার ব্যক্তিগত ডেটা ব্যবহার করি। পরিষেবা ব্যবহার করে, আপনি এই গোপনীয়তা নীতির সাথে আপনার তথ্য সংগ্রহ এবং ব্যবহারে সম্মতি দেন।

সংজ্ঞা এবং ব্যাখ্যা
ব্যাখ্যা
এই নীতিতে ব্যবহৃত শব্দগুলির অর্থ এখানে নির্ধারণ করা হয়েছে। একবচন বা বহুবচন যেভাবেই ব্যবহৃত হোক না কেন, এদের একই অর্থ বহন করবে।

সংজ্ঞা
এই গোপনীয়তা নীতির জন্য:

অ্যাকাউন্ট: পরিষেবার কিছু অংশে প্রবেশের জন্য আপনার জন্য তৈরি একটি অনন্য অ্যাকাউন্ট।
অ্যাপ্লিকেশন: ফেনী অ্যাপ, যা কোম্পানির সরবরাহকৃত সফটওয়্যার প্রোগ্রাম।
কোম্পানি: ফেনী অ্যাপ, এখানে "আমরা", "আমাদের", বা "কোম্পানি" হিসাবে উল্লেখ করা হয়েছে।
দেশ: বাংলাদেশ।
ডিভাইস: শুধু মাত্র মোবাইল ফোন ও ট্যাবলেট ডিভাইস অ্যাক্সেস করতে পারে।
ব্যক্তিগত ডেটা: এমন তথ্য যা একজন সনাক্তযোগ্য ব্যক্তির সাথে সম্পর্কিত।
ব্যবহারের ডেটা: পরিষেবা ব্যবহারের মাধ্যমে স্বয়ংক্রিয়ভাবে সংগৃহীত ডেটা।
আপনার ব্যক্তিগত ডেটা সংগ্রহ ও ব্যবহার
সংগৃহীত ডেটার ধরন
ব্যক্তিগত ডেটা:
আমাদের পরিষেবা ব্যবহারের সময়, আমরা আপনার ফোন নম্বর এবং অন্যান্য প্রাসঙ্গিক তথ্য সংগ্রহ করতে পারি।

ব্যবহারের ডেটা:
স্বয়ংক্রিয়ভাবে সংগৃহীত ডেটা, যেমন আপনার ডিভাইসের আইপি ঠিকানা, ব্রাউজার টাইপ, এবং পরিষেবায় ব্যয়িত সময়।

আপনার ব্যক্তিগত ডেটার ব্যবহার
আমরা আপনার ব্যক্তিগত ডেটা নিম্নলিখিত উদ্দেশ্যে ব্যবহার করতে পারি:

পরিষেবা প্রদান এবং বজায় রাখা।
আপনার অ্যাকাউন্ট পরিচালনা করা।
আপনার অনুরোধগুলি পরিচালনা করা।
কোম্পানির সম্পদ স্থানান্তরের ক্ষেত্রে ডেটা ব্যবহার।
ডেটা বিশ্লেষণ ও পরিষেবা উন্নত করা।
আপনার ডেটা মুছে ফেলা
আপনার তথ্য মুছে ফেলার জন্য, আপনি আপনার অ্যাকাউন্ট সেটিংস থেকে এটি পরিচালনা করতে পারেন অথবা আমাদের সাথে যোগাযোগ করতে পারেন।

ডেটার নিরাপত্তা
আমরা আপনার তথ্য সুরক্ষিত রাখতে বদ্ধপরিকর। তবে, ইন্টারনেটের মাধ্যমে যে কোনও পদ্ধতির মাধ্যমে ১০০% নিরাপত্তা নিশ্চিত করা সম্ভব নয়।

শিশুদের গোপনীয়তা
আমাদের পরিষেবা ১৩ বছরের নিচে কারও জন্য নয়। আমরা ইচ্ছাকৃতভাবে তাদের তথ্য সংগ্রহ করি না।

অন্যান্য ওয়েবসাইটের লিঙ্ক
আমাদের পরিষেবা তৃতীয় পক্ষের ওয়েবসাইটের লিঙ্ক অন্তর্ভুক্ত করতে পারে। আমরা সেই ওয়েবসাইটের গোপনীয়তা নীতির জন্য দায়ী নই।

যোগাযোগ করুন
এই গোপনীয়তা নীতি সম্পর্কে যদি আপনার কোন প্রশ্ন থাকে, আমাদের সাথে যোগাযোগ করুন:

ইমেইল: info@stitbd.com""",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
