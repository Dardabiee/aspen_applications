// import 'package:aspen_applications/model/model_aspen_list.dart';
import 'package:flutter/material.dart';

class TabBarSection extends StatelessWidget {
  const TabBarSection({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;


  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _tabController,
      indicatorColor:Color(0XFF176FF2),
      labelColor: Color(0XFF176FF2),
      unselectedLabelColor: Color(0XFFB8B8B8),
      labelStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700
      ),
      unselectedLabelStyle: TextStyle(
         fontSize: 16,
        fontWeight: FontWeight.w400
      ),
      tabs: [
        Tab(text: "Location",),
        Tab(text: "Hotels",),
        Tab(text: "Foods",),
        Tab(text: "Adventure",),
      ]
    );
  }
}
