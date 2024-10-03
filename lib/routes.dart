// import 'package:aspen_applications/model/model_aspen_list.dart';
import 'package:aspen_applications/screens/home/home_screen.dart';
import 'package:aspen_applications/screens/placeScreen/place_screen.dart';
import 'package:aspen_applications/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';


final Map<String, WidgetBuilder> routes ={
  SplashScreen.routeName: (context) => const SplashScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  PlaceScreen.routeName: (context) => const PlaceScreen(),
};