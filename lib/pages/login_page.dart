import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otrippers/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/pic.jpeg'),
                  fit: BoxFit.fill),
            ),
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // margin: EdgeInsets.fromLTRB(3, 0, 0, 36),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/image_1.png',
                        ),
                      ),
                    ),
                    child: Container(
                      width: 80,
                      height: 116,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  // margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Text(
                    'O’trippers',
                    style: GoogleFonts.saira(
                      // '',
                      fontWeight: FontWeight.w400,
                      fontSize: 32,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  height: 50,

                  child: Text(
                    'let’s go anywhere',
                    style: GoogleFonts.sairaExtraCondensed(
                      // 'Saira ExtraCondensed',
                      fontWeight: FontWeight.w400,
                      fontSize: 32,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  // ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        prefixIcon: Icon(Icons.email),
                        labelText: 'Email Address',
                        hintText: 'Enter your Email'),
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                Container(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        prefixIcon: Icon(Icons.lock),
                        labelText: 'Passwode',
                        hintText: 'Enter your Passwode'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 125),
                  child: Text(
                    'Forgot your password?',
                    style: GoogleFonts.getFont(
                      'Montserrat',
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Color(0xFFFCFCFC),
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Container(
                  // margin: EdgeInsets.fromLTRB(60, 0, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: InkWell(
                          onTap: () {
                            Get.to(
                              HomePage(),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFFF473A),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x40000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            height: 50,
                            width: 300,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Log In',
                                  style: GoogleFonts.getFont(
                                    'Montserrat',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 110),
                        child: Text(
                          'Don’t have an account?',
                          style: GoogleFonts.getFont(
                            'Montserrat',
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Color(0xFFFCFCFC),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
