import 'package:aspen_applications/screens/splash/compenents/button.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/splash.jpg",
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.1,
          left: 0,
          right: 0,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "ASPEN",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 90,
              ),
              textAlign: TextAlign.center, // Optional: centers the text
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.6,
          left: 20, // Changed to 0 to allow full width
          right: 20, // Changed to 0 to allow full width
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Plan your",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                "Luxurious \nVocation",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              ButtonSection(),
            ],
          ),
        ),
      ],
    );
  }
}


