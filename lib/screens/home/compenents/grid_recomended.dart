
import 'package:aspen_applications/screens/placeScreen/place_screen.dart';
import 'package:flutter/material.dart';

class RecomendedSection extends StatelessWidget {
  const RecomendedSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(), // Agar scroll grid tidak bentrok dengan SingleChildScrollView
      shrinkWrap: true, // Mengatur grid agar sesuai dengan konten yang ada
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Jumlah kolom dalam grid
        mainAxisSpacing: 10, // Jarak antar baris
        crossAxisSpacing: 10, // Jarak antar kolom
        childAspectRatio: 0.8, // Rasio tinggi-lebar setiap item
      ),
      itemCount: 2, // Jumlah item dalam grid
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => PlaceScreen()));
          },
          child: Container(
                decoration: BoxDecoration(
          color: Colors.white, // Latar belakang putih untuk item grid
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey.shade300), // Menambahkan border
                ),
                child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  ClipRRect(
                    child: Image.asset("assets/images/padma ubud.jpeg"
                      , // Ganti dengan gambar yang diinginkan
                      fit: BoxFit.cover, // Mengisi seluruh Container dengan gambar
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ],
              ),
            ),
             Padding(
              padding:  const EdgeInsets.all(8.0),
              child: Text(
               "Padma Ubud",
                style: const  TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                    Icon(Icons.star, color: Colors.yellow, size: 18,),
                    SizedBox(width: 5,),
                    Text("4.2", style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54
                   ),),
                    ],
                   )
            ),
          ],
                ),
              ),
        );
      },
    );
  }
}
