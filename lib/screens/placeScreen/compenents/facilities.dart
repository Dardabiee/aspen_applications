import 'package:flutter/material.dart';

class FacilitiesSection extends StatelessWidget {
  const FacilitiesSection({
    super.key,
  });

   final List<Map<String, dynamic>> facilities = const [
    {
      "icon": Icons.commute_outlined,
      "label": "Transportation",
    },
    {
      "icon": Icons.bathtub,
      "label": "Bathroom",
    },
    {
      "icon": Icons.mosque,
      "label": "Mosque",
    },
    {
      "icon": Icons.bed,
      "label": "Bedroom",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 29),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Text("Facilities",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
         ),
        ),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: facilities.map((facility){
            return Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                padding: EdgeInsets.fromLTRB(0,14,0,12),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 218, 236, 250),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 8),
                      width: 28,
                      height: 30,
                      child: 
                        Icon(facility["icon"],
                        color: Colors.black54,
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 1.3),
                      child: Text(facility["label"],
                      style: TextStyle(
                        fontSize: 11
                      ),),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
         )
        ],
      ),
    );
  }
}

