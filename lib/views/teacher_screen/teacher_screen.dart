import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../global/constants/colors_resources.dart';
import '../../../../../global/widget/global_container.dart';
import '../../global/widget/custom_app_bar.dart';
import '../notification_screen/notification_screen.dart';
import 'teacher_tab_view/choosing_screen.dart';
import 'teacher_tab_view/college_screen.dart';
import 'teacher_tab_view/high_school_screen.dart';
import 'teacher_tab_view/madrasha_screen.dart';
import 'teacher_tab_view/primary_screen.dart';

class TeacherScreen extends StatefulWidget {
  final String instituteId;
  const TeacherScreen({
    super.key,
    required this.instituteId,
  });

  @override
  State<TeacherScreen> createState() => _TeacherScreenState();
}

class _TeacherScreenState extends State<TeacherScreen> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: GlobalAppBar(
          title: 'শিক্ষক',
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
            body: Column(
              children: [
                GlobalContainer(
                  height: 35,
                  padding: const EdgeInsets.only(bottom: 5),
                  color: ColorRes.primaryColor,
                  child: Center(
                    child: TabBar(
                      controller: _tabController,
                      labelColor: ColorRes.primaryColor,
                      unselectedLabelColor: ColorRes.white,
                      unselectedLabelStyle: const TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                      labelStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      indicator: const BoxDecoration(
                        color: ColorRes.white,
                      ),
                      indicatorSize: TabBarIndicatorSize.label,
                      labelPadding: EdgeInsets.zero,
                      tabs: [
                        Tab(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: ColorRes.white, width: 1),
                            ),
                            child: const Center(child: Text('প্রাইমারী')),
                          ),
                        ),
                        Tab(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: ColorRes.white, width: 1),
                            ),
                            child: const Center(child: Text('হাইস্কুল')),
                          ),
                        ),
                        Tab(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: ColorRes.white, width: 1),
                            ),
                            child: const Center(child: Text('কলেজ')),
                          ),
                        ),
                        Tab(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: ColorRes.white, width: 1),
                            ),
                            child: const Center(child: Text('মাদ্রসা')),
                          ),
                        ),
                        Tab(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: ColorRes.white, width: 1),
                            ),
                            child: const Center(child: Text('কোচিং')),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: GlobalContainer(
                      width: MediaQuery.of(context).size.width,
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          PrimaryScreen(
                            instituteId: widget.instituteId,
                          ),
                          HighSchoolScreen(
                            instituteId: widget.instituteId,
                          ),
                          CollegeScreen(
                            instituteId: widget.instituteId,
                          ),
                          MadrashaScreen(
                            instituteId: widget.instituteId,
                          ),
                          ChoosingScreen(
                            instituteId: widget.instituteId,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
      }
  }
