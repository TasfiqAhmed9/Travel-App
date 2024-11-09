import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:otrippers/pages/home_page.dart';
import 'package:otrippers/pages/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/b_ground.jpeg'),
                  fit: BoxFit.fill),
              // color: Color(0xFFFFFFFF),
            ),
            child: Container(
              child: Stack(
                // clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    // double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 150,
                        ),
                        Container(
                          // alignment: Alignment.center,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/image.png',
                              ),
                            ),
                          ),
                          // child: Container(
                          width: 220,
                          height: 130,
                          // ),
                        ),
                        Container(
                          // margin: EdgeInsets.fromLTRB(7.9, 0, 0, 370),
                          child: Text(
                            'O’trippers',
                            style: GoogleFonts.getFont(
                              'Russo One',
                              fontWeight: FontWeight.w400,
                              fontSize: 32,
                              color: Color(0xFF030248),
                            ),
                          ),
                        ),
                        Container(
                          // margin: EdgeInsets.fromLTRB(0, 0, 0, 370),
                          height: 40,
                          child: Text(
                            'let’s go anywhere',
                            style: GoogleFonts.sairaExtraCondensed(
                              fontWeight: FontWeight.w400,
                              fontSize: 32,
                              color: Color(0xFFFE0000),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 300,
                        ),
                        Container(
                          // margin: EdgeInsets.fromLTRB(0, 0, 0.3, 0),
                          child: Text(
                            'powered by',
                            style: GoogleFonts.sairaExtraCondensed(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                        Container(
                          // margin: EdgeInsets.fromLTRB(7, 0, 0, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/images/new_project_1.png',
                                ),
                              ),
                            ),
                            // child: Container(
                            width: 92,
                            height: 34,
                            // ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
