
import 'package:flutter/material.dart';

class SearchBarSection extends StatelessWidget {
  const SearchBarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
     child: TextFormField(
       decoration: InputDecoration(
         labelText: 'Find things to do',
         labelStyle: TextStyle(color: Colors.black38),
         fillColor: const Color.fromARGB(255, 231, 240, 254),
         filled: true,
         border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(20),
           borderSide: BorderSide.none
         ),
         prefixIcon: Icon(Icons.search,
         color: Colors.black38,
         ),
       ),
       style: const TextStyle(color: Colors.white),
     ),
    );
  }
}

