// import 'package:aspen_applications/model/model_aspen_list.dart';
import 'package:aspen_applications/screens/home/compenents/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home_screen";
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}