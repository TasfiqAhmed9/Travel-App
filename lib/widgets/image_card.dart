import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: EdgeInsets.all(2.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 130,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/sea.jpeg',
                  fit: BoxFit.cover,
                  width: double.maxFinite,
                  height: 105,
                ),
              ),
            ),
            // SizedBox(
            //   height: 1,
            // ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'The Pink Beach',
                    style: GoogleFonts.getFont(
                      'Montserrat',
                      fontWeight: FontWeight.w700,
                      fontSize: 10,
                      color: Color(0xFF030248),
                    ),
                  ),
                  // SizedBox(
                  //   height: 0.9,
                  // ),
                  // Text(
                  //   'Product Name',
                  //   style: TextStyle(fontSize: 16),
                  //   overflow: TextOverflow.ellipsis,
                  // ),
                  // SizedBox(
                  //   height: 0.9,
                  // ),
                  // Text(
                  //   'Price',
                  //   style: TextStyle(fontSize: 16),
                  //   overflow: TextOverflow.ellipsis,
                  // ),
                  // SizedBox(
                  //   height: 1,
                  // ),
                  // Container(
                  //   child: Text(
                  //     '10% off',
                  //     style: TextStyle(
                  //         color: Colors.white,
                  //         fontSize: 11,
                  //         fontWeight: FontWeight.bold),
                  //   ),
                  //   padding: const EdgeInsets.symmetric(horizontal: 7),
                  //   decoration: BoxDecoration(
                  //     color: const Color.fromARGB(255, 17, 152, 87),
                  //     borderRadius: BorderRadius.circular(3),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
