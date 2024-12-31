import 'package:flutter/material.dart';
import '../../../../../global/constants/colors_resources.dart';
import '../../../../../global/widget/global_container.dart';
import '../../global/widget/custom_app_bar.dart';
import 'flat_land_tab_view/land_screen.dart';
import 'flat_land_tab_view/flat_screen.dart';

class FlatLandScreen extends StatefulWidget {
  final String instituteId;
  const FlatLandScreen({
    super.key,
    required this.instituteId,
  });

  @override
  State<FlatLandScreen> createState() => _FlatLandScreenState();
}

class _FlatLandScreenState extends State<FlatLandScreen> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: GlobalAppBar(
          title: 'ফ্ল্যাট ও জমি',
          notiOnTap: () {},
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
                            child: const Center(child: Text('ফ্ল্যাট')),
                          ),
                        ),
                        Tab(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: ColorRes.white, width: 1),
                            ),
                            child: const Center(child: Text('জমি')),
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
                          FlatScreen(
                            instituteId: widget.instituteId,
                          ),
                          LandScreen(
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
