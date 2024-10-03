import 'package:aspen_applications/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class HeaderPlaceScreen extends StatelessWidget {
  const HeaderPlaceScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2.4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              image: AssetImage("assets/images/padma ubud.jpeg"),
              fit: BoxFit.cover
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
                child: Container(
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 2,
                        spreadRadius: 4
                      )
                    ]
                  ),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          bottom: -20,
          right: 20,
          child: Container(
            padding: EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 2,
                  spreadRadius: 4
                )
              ]
            ),
            child: Icon(Icons.favorite,
            color: Colors.red,
            size: 30,
            ),
          )
        )
      ],
    );
  }
}