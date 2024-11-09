import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:otrippers/pages/home_page.dart';
import 'package:otrippers/screen/splash_screen.dart';
// import 'package:otrippers/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
