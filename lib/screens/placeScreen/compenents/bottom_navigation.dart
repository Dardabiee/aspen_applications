// import 'package:aspen_applications/model/model_aspen_list.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
       padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("price",
              style: TextStyle(
                fontSize: 15,
              ),),
              Text("\$ 129",
              style: TextStyle(
                fontSize: 21,
                color: Colors.blue,
                fontWeight: FontWeight.bold
              ),),
            ],
          ),
          SizedBox(width: 15,),
          Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          minimumSize: const Size(0, 56), // Lebar diatur oleh Expanded
          shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
    Text("Book Now ",style: TextStyle(
      color: Colors.white,
      fontSize: 20,
    ),),
    Icon(Icons.arrow_forward,
    color: Color.fromARGB(255, 255, 255, 255),),
          ],
        ),
      ),
    )
    
        ],
      ),
    );
  }
}
