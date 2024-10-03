// import 'package:aspen_applications/screens/home/compenents/grid_recomended.ddart';
// import 'package:aspen_applications/model/model_aspen_list.dart';
// import 'package:aspen_applications/routes.dart';
import 'package:aspen_applications/screens/home/compenents/header.dart';
import 'package:aspen_applications/screens/home/compenents/home_body.dart';
// import 'package:aspen_applications/screens/home/compenents/popular_section.dart';
import 'package:aspen_applications/screens/home/compenents/search_bar.dart';
import 'package:aspen_applications/screens/home/compenents/tab_bar.dart';
// import 'package:aspen_applications/widgets/popular.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body>
with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
 void initState() {
  // TODO implement state
  super.initState();
  _tabController = TabController(length: 4, vsync: this);
 }
  @override
  void dispose() {
    // TODO implement spose
    _tabController.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: HeaderSection(),
            ),
            const SizedBox(height: 10,),
            SearchBarSection(),
            const SizedBox(height: 20,),
            TabBarSection(tabController: _tabController,),
            const SizedBox(height: 20,),
            SizedBox(
               height: MediaQuery.of(context).size.height * 0.5,
              child: TabBarView(
                controller: _tabController,
                children: [
                  buildTabContent("Locations"),
                  buildTabContent("Hotels"),
                  buildTabContent("Foods"),
                  buildTabContent("Adventure"),
                ]
              )
            ),
            
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blue,
        currentIndex: 0,
        unselectedItemColor: Colors.black38,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        onTap: (index) {
          // Handle navigation on tap
          // You can add navigation logic here
        },
      ),
    );
  }
}

Widget buildTabContent(String tab, ) {
  return HomeBody();
}

