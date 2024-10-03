import 'package:aspen_applications/widgets/popular.dart';
import 'package:flutter/material.dart';

class PopulerSection extends StatelessWidget {
  const PopulerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          PopularItem(
              title: "Bromo Mountain",
              rate: "4.3",
              image: "assets/images/bromo-mountain.jpg"),
          SizedBox(width: 10),
          PopularItem(
              title: "Adiwana Suweta",
              rate: "4.0",
              image: "assets/images/adiwana suweta.webp"),
          SizedBox(width: 10),
          PopularItem(
              title: "Padma Ubud",
              rate: "4.0",
              image: "assets/images/padma ubud.jpeg")
        ],
      ),
    );
  }
}

