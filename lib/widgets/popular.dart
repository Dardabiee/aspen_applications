import 'package:flutter/material.dart';

class PopularItem extends StatelessWidget {
  final String title;
  final String rate;
  final String image;
  
  const PopularItem({super.key, 
  required this.title, 
  required this.rate, 
  required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      // Navigator.pushNamed(context, PlaceScreen.routeName);
      },
      child: Container(
        width: 200,
        height: 240,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black,
          image: DecorationImage(
            fit: BoxFit.cover,
            opacity: 0.9,
            image: AssetImage(image)
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                       padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                       decoration: BoxDecoration(
                        color: Color(0XFF4D5652),
                        borderRadius: BorderRadius.circular(20)
                       ),
                       child: Text(title, style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                       ),),
                    ),
                   const SizedBox(height: 10,),
                    Container(
                       padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                       decoration: BoxDecoration(
                        color: Color(0XFF4D5652),
                        borderRadius: BorderRadius.circular(20)
                       ),
                       child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                        Icon(Icons.star, color: Colors.yellow, size: 18,),
                        SizedBox(width: 5,),
                        Text(rate, style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                       ),),
                        ],
                       )
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle
                  ),
                  child: Icon(Icons.favorite,
                  color: Colors.red,
                  ),
                )
              ],
            ),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}