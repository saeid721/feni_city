import 'package:flutter/material.dart';
import '../../../../../global/constants/colors_resources.dart';
import '../../../../../global/widget/global_container.dart';
import '../../global/widget/custom_app_bar.dart';
import 'hospital_tab_view/clinic_screen.dart';
import 'hospital_tab_view/gov_hospital_screen.dart';

class HospitalScreen extends StatefulWidget {
  final String instituteId;
  const HospitalScreen({
    super.key,
    required this.instituteId,
  });

  @override
  State<HospitalScreen> createState() => _HospitalScreenState();
}

class _HospitalScreenState extends State<HospitalScreen> with SingleTickerProviderStateMixin {
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
          title: 'শিক্ষা প্রতিষ্ঠান',
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
                            child: const Center(child: Text('সরকারি হাসপাতাল')),
                          ),
                        ),
                        Tab(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: ColorRes.white, width: 1),
                            ),
                            child: const Center(child: Text('বেসরকারি ক্লিনিক')),
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
                          GovHospitalScreen(
                            instituteId: widget.instituteId,
                          ),
                          ClinicScreen(
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
