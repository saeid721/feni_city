import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../global/constants/colors_resources.dart';
import '../../../../../global/widget/global_container.dart';
import '../../global/widget/custom_app_bar.dart';
import '../notification_screen/notification_screen.dart';
import 'rant_car_tab_view/ambulance_screen.dart';
import 'rant_car_tab_view/bus_screen.dart';
import 'rant_car_tab_view/car_screen.dart';
import 'rant_car_tab_view/pickup_screen.dart';
import 'rant_car_tab_view/track_screen.dart';

class RantCarScreen extends StatefulWidget {
  final String typeId;
  const RantCarScreen({
    super.key,
    required this.typeId,
  });

  @override
  State<RantCarScreen> createState() => _RantCarScreenState();
}

class _RantCarScreenState extends State<RantCarScreen> with SingleTickerProviderStateMixin {
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
          title: 'গাড়ি ভাড়া',
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
                            child: const Center(child: Text('অ্যাম্বুলেন্স')),
                          ),
                        ),
                        Tab(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: ColorRes.white, width: 1),
                            ),
                            child: const Center(child: Text('কার')),
                          ),
                        ),
                        Tab(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: ColorRes.white, width: 1),
                            ),
                            child: const Center(child: Text('বাস')),
                          ),
                        ),
                        Tab(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: ColorRes.white, width: 1),
                            ),
                            child: const Center(child: Text('ট্র্যাক')),
                          ),
                        ),
                        Tab(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: ColorRes.white, width: 1),
                            ),
                            child: const Center(child: Text('পিকআপ')),
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
                          AmbulanceScreen(
                            instituteId: widget.typeId,
                          ),
                          CarScreen(
                            instituteId: widget.typeId,
                          ),
                          BusScreen(
                            instituteId: widget.typeId,
                          ),
                          TrackScreen(
                            instituteId: widget.typeId,
                          ),
                          PickupScreen(
                            instituteId: widget.typeId,
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
