import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Explore",style: 
            TextStyle(
              fontSize: 15
              ),
            ),
            Text("Aspen",style: 
            TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400
              ),
            ),
          ],
        ),
        Row(
          children: [
            Icon(Icons.location_on,
            color: Colors.blue,),
            Text("Explore, ",
            style: TextStyle(
              color: Colors.black54
            ),),
            Text("Indonesia",
            style: TextStyle(
              color: Colors.black54
            ),),
            Icon(Icons.keyboard_arrow_down_outlined,
            color: Colors.blue,
            size: 30,
            )
          ],
        ),
      ],
    );
  }
}
