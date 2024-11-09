import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Row(
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
                  height: 120,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'The Pink Beach',
                    style: GoogleFonts.getFont(
                      'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xFF030248),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_sharp,
                          color: Color.fromARGB(255, 233, 28, 13),
                          size: 13,
                        ),
                        Text(
                          'The Pink Beach',
                          style: GoogleFonts.getFont(
                            'Montserrat',
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Color.fromARGB(255, 233, 28, 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   height: 0.9,
                  // ),
                  // Text(
                  //   'The Pink Beach',
                  //   style: GoogleFonts.getFont(
                  //     'Montserrat',
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 16,
                  //     color: Colors.black,
                  //   ),
                  // ),
                  SizedBox(
                    height: 0.9,
                  ),
                  // Container(
                  //   margin: EdgeInsets.only(left: 20, right: 20),
                  //   child: RichText(
                  //     textAlign: TextAlign.justify,
                  //     text: TextSpan(
                  //       text:
                  //           'The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia',
                  //       style: GoogleFonts.getFont(
                  //         'Montserrat',
                  //         fontWeight: FontWeight.w400,
                  //         fontSize: 9,
                  //         color: Color(0xFF8D94A2),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Container(
                    width: 300,
                    child: Text(
                      'The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia',
                      style: GoogleFonts.getFont(
                        'Montserrat',
                        fontWeight: FontWeight.w400,
                        fontSize: 9,
                        color: Color(0xFF8D94A2),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  // Container(
                  //   child:
                  Row(
                    children: [
                      Text(
                        '36৳',
                        style: GoogleFonts.getFont(
                          'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color(0xFF030248),
                        ),

                        // ),
                        //   padding: const EdgeInsets.symmetric(horizontal: 7),
                        //   decoration: BoxDecoration(
                        //     color: const Color.fromARGB(255, 17, 152, 87),
                        //     borderRadius: BorderRadius.circular(3),
                        //   ),
                      ),
                      Text(
                        '/person',
                        style: GoogleFonts.getFont(
                          'Montserrat',
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xFF8D94A2),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
