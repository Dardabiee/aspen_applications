// import 'package:aspen_applications/model/model_aspen_list.dart';
import 'package:aspen_applications/screens/placeScreen/compenents/body.dart';
import 'package:flutter/material.dart';

class PlaceScreen extends StatelessWidget {
  static  String routeName = '/place';
  const PlaceScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}