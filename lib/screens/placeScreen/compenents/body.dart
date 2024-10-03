// import 'package:aspen_applications/model/model_aspen_list.dart';
import 'package:aspen_applications/screens/placeScreen/compenents/bottom_navigation.dart';
import 'package:aspen_applications/screens/placeScreen/compenents/facilities.dart';
import 'package:aspen_applications/screens/placeScreen/compenents/header_place_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.all(10),
           child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderPlaceScreen(),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Padma Ubud",
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Show map",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children:[
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 248, 224, 0),
                  ),
                  Text(
                    " 4.2 (830 Reviews)",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              Text(
                "Nestled within an unspoiled river valley and overlooking the enchanting forests of Payangan, the 149-room Padma Resort Ubud is an expansive and tranquil luxury destination. Located north of Ubud, Bali’s celebrated capital of arts and culture, Padma Resort Ubud features all the five-star amenities and facilities one would expect from the renowned Padma hospitality brand, including stunning views from every room or suite, a first-class spa, an awe-inspiring 89-metre infinity swimming pool with panoramic views, signature world-class dining and modern event venues. Our Ubud resort is idyllic and the perfect place to refresh your mind and body, and to explore the wonders of north and central Bali.",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 25,),
              const FacilitiesSection(),
            ],
           ),
         ), 
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: BottomNavigation(),
      ),
    );
  }
}

