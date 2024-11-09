import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otrippers/pages/details_page.dart';
// import 'package:otrippers/pages/login_page.dart';
import 'package:otrippers/pages/user_profile.dart';
// import 'package:otrippers/pages/login_page.dart';
import 'package:otrippers/widgets/banner_card.dart';
import 'package:otrippers/widgets/item_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Container(
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/image.png',
                              ),
                            ),
                          ),
                          width: 63,
                          height: 65,
                        ),
                        Column(
                          children: [
                            Container(
                              // margin: EdgeInsets.fromLTRB(0, 10, 0, 13),
                              child: Text(
                                'O’trippers',
                                style: GoogleFonts.getFont(
                                  'Russo One',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Color(0xFF030248),
                                ),
                              ),
                            ),
                            SizedBox(
                              // height: 23,
                              child: Text(
                                'Let’s go anywhere!',
                                style: GoogleFonts.sairaExtraCondensed(
                                  // 'Saira ExtraCondensed',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16,
                                  color: Color(0xFFFE0000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          actions: [
            InkWell(
              onTap: () {
                Get.to(
                  UserProfile(),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(right: 13),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/ill.png'),
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: SizedBox(
                          width: 195,
                          child: Text(
                            'Upcoming Events',
                            style: GoogleFonts.getFont(
                              'Montserrat',
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Color(0xFF030248),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                child: Text(
                                  'View all',
                                  style: GoogleFonts.getFont(
                                    'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color(0xFFFD0001),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 51,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Chip(
                          backgroundColor: Color.fromARGB(255, 238, 241, 238),
                          // Remove the default border by setting the elevation to 0
                          elevation: 0, side: BorderSide.none,
                          label: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '🏔️ ', // Mountain emoji
                                style: TextStyle(
                                    fontSize: 18), // Adjust size if needed
                              ),
                              Text(
                                'Category',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: 7,
                ),
              ),

              // SizedBox(
              //   height: 51,
              //   child: ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     itemBuilder: (context, index) {
              //       return InkWell(
              //         onTap: () {},
              //         child: Padding(
              //           padding: EdgeInsets.all(5),
              //           child: Chip(
              //             backgroundColor: Colors.grey.shade100,
              //             label: Text(
              //               ' Category',
              //               style: TextStyle(fontWeight: FontWeight.bold),
              //             ),
              //           ),
              //         ),
              //       );
              //     },
              //     itemCount: 7,
              //   ),
              // ),
              Container(
                padding: EdgeInsets.only(left: 10),
                height: 143,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: BannerCard(),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              // child:
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: SizedBox(
                          width: 195,
                          child: Text(
                            'Popular Destination',
                            style: GoogleFonts.getFont(
                              'Montserrat',
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Color(0xFF030248),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                child: Text(
                                  'View all',
                                  style: GoogleFonts.getFont(
                                    'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color(0xFFFD0001),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // ),
              SizedBox(
                height:
                    double.maxFinite, // Adjust the height based on your content
                child: ListView.builder(
                  shrinkWrap: true, physics: NeverScrollableScrollPhysics(),
                  // primary: false,
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(DetailsPage());
                        // Add navigation to details page if required
                      },
                      child: ItemCard(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        // Container(
        //   child: Column(
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Container(
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Container(
        //                 child: SizedBox(
        //                   // width: 189,
        //                   width: 195,
        //                   child: Text(
        //                     'Upcomeing Events',
        //                     // 'Popular Destination',
        //                     style: GoogleFonts.getFont(
        //                       'Montserrat',
        //                       fontWeight: FontWeight.w700,
        //                       fontSize: 18,
        //                       color: Color(0xFF030248),
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //               Container(
        //                 child: Row(
        //                   mainAxisAlignment: MainAxisAlignment.center,
        //                   children: [
        //                     InkWell(
        //                       onTap: () {},
        //                       child: Container(
        //                         child: Text(
        //                           'View all',
        //                           style: GoogleFonts.getFont(
        //                             'Montserrat',
        //                             fontWeight: FontWeight.w500,
        //                             fontSize: 12,
        //                             color: Color(0xFFFD0001),
        //                           ),
        //                         ),
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //       // ),
        //       SizedBox(
        //         height: 51,
        //         child: ListView.builder(
        //           scrollDirection: Axis.horizontal,
        //           itemBuilder: (context, index) {
        //             return InkWell(
        //               onTap: () {},
        //               child: Padding(
        //                 padding: EdgeInsets.all(5),
        //                 child: Chip(
        //                   label: Text(
        //                     'Category',
        //                     style: TextStyle(fontWeight: FontWeight.bold),
        //                   ),
        //                 ),
        //               ),
        //             );
        //           },
        //           itemCount: 7,
        //         ),
        //       ),
        //       Container(
        //         padding: EdgeInsets.only(left: 10),
        //         height: 143,
        //         width: double.maxFinite,
        //         child: ListView.builder(
        //           scrollDirection: Axis.horizontal,
        //           itemCount: 5,
        //           itemBuilder: (context, index) {
        //             return InkWell(onTap: () {}, child: BannerCard());
        //           },
        //         ),
        //       ),
        //       SizedBox(
        //         height: 10,
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Container(
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Container(
        //                 // margin: EdgeInsets.fromLTRB(0, 0, 11, 0),
        //                 child: SizedBox(
        //                   // width: 189,
        //                   width: 195,
        //                   child: Text(
        //                     'Popular Destination',
        //                     // 'Popular Destination',
        //                     style: GoogleFonts.getFont(
        //                       'Montserrat',
        //                       fontWeight: FontWeight.w700,
        //                       fontSize: 18,
        //                       color: Color(0xFF030248),
        //                     ),
        //                   ),
        //                 ),
        //               ),
        //               Container(
        //                 // margin: EdgeInsets.fromLTRB(0, 5, 0, 2),
        //                 child: Row(
        //                   mainAxisAlignment: MainAxisAlignment.center,
        //                   // crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: [
        //                     InkWell(
        //                       onTap: () {},
        //                       child: Container(
        //                         // margin: EdgeInsets.fromLTRB(0, 0, 6, 0),
        //                         child: Text(
        //                           'View all',
        //                           style: GoogleFonts.getFont(
        //                             'Montserrat',
        //                             fontWeight: FontWeight.w500,
        //                             fontSize: 12,
        //                             color: Color(0xFFFD0001),
        //                           ),
        //                         ),
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //       Expanded(
        //         child: ListView.builder(
        //             scrollDirection: Axis.vertical,
        //             itemCount: 10,
        //             itemBuilder: (context, index) {
        //               return InkWell(
        //                   onTap: () {
        //                     Get.to(DetailsPage());
        //                   },
        //                   child: ItemCard());
        //             }),
        //       ),
        //     ],
        //   ),
        // ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color.fromARGB(185, 255, 17, 0),
          unselectedItemColor: Colors.grey.shade400,
          type: BottomNavigationBarType.fixed,
          landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
          currentIndex: _selectedindex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              // backgroundColor: Colors.red
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_rounded,
                  // color: Colors.grey,
                ),
                label: 'Fav List',
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_rounded),
                label: 'My Trips',
                backgroundColor: Colors.red),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Be A Host',
                backgroundColor: Colors.red),
          ],
          onTap: (index) {
            setState(() {
              _selectedindex = index;
            });
          },
        )
        // NavigationBar(destinations: [
        //   NavigationDestination(
        //       icon: IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        //       label: 'Home'),
        //   NavigationDestination(
        //       icon: IconButton(
        //           onPressed: () {}, icon: Icon(Icons.favorite_rounded)),
        //       label: 'Fav List'),
        //   NavigationDestination(
        //       icon: IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        //       label: 'My Trips'),
        //   NavigationDestination(
        //       icon: IconButton(onPressed: () {}, icon: Icon(Icons.macro_off)),
        //       label: 'Be A Host'),
        // ]),
        );
  }
}
