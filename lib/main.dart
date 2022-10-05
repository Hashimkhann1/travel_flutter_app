import 'package:flutter/material.dart';
import 'package:travel_app/view/home/homePages/detail_page.dart';
import 'package:travel_app/view/onboarding_screen/onboarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          // child: OnBoarding()
        child: DetailPage(),
      ),
    );
}
}
