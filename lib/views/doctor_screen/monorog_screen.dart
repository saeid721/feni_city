import 'package:flutter/material.dart';
import '../../global/widget/custom_app_bar.dart';
import 'components/doctor_details_widget.dart';

class MonorogScreen extends StatefulWidget {
  const MonorogScreen({super.key});

  @override
  State<MonorogScreen> createState() => _MonorogScreenState();
}

class _MonorogScreenState extends State<MonorogScreen> {

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
            title: 'মেডিসিন বিশেষজ্ঞ',
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
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (ctx, index) {
                    return DoctorDetailsWidget(
                      name: "ডা. তাসনিম জারা",
                      degree: "MBBS (DMC), MSc (Oxford), MRCP (UK), DRCOG (UK), AFHEA (UK)",
                      designation: "সিনিয়র ক্লিনিক্যাল সুপারভাইজার",
                      address: "কেমব্রিজ বিশ্ববিদ্যালয়",
                      chamber: "ফেনী সদর, ফেনী",
                      phone: "+88 01700 00 00 00",
                      details: """ডা. তাসনিম জারা যুক্তরাজ্যের কেমব্রিজের একজন চিকিৎসক ও “সহায় হেলথ”-এর সহপ্রতিষ্ঠাতা। তিনি বাংলাদেশের শীর্ষ মেডিকেল শিক্ষা প্রতিষ্ঠান ঢাকা মেডিকেল কলেজ থেকে এমবিবিএস ডিগ্রি সম্পন্ন করেন। পরবর্তীতে, উচ্চতর পড়াশোনা করতে অক্সফোর্ড বিশ্ববিদ্যালয়ে যান এবং সেখান থেকে সর্বোচ্চ ফলাফল (ডিসটিঙ্কশন) অর্জন করে ডিগ্রি সম্পন্ন করেন। এছাড়াও তিনি যুক্তরাজ্যের রয়্যাল কলেজ অফ অবস্টেট্রিশিয়ান এবং গাইনোকোলজিস্ট থেকে ডিআরসিওজি ডিগ্রি অর্জন করেছেন, এটি নারীদের স্বাস্থ্য সম্পর্কে গভীর জ্ঞানের স্বীকৃতি স্বরূপ প্রদান করা হয়।""",
                      imagePath: 'assets/images/doctors/doctor.jpg',
                      call: "কল",
                      sms: "এস.এম.এস",
                      map: "ম্যাপ",
                      onTap: () {

                      },
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
