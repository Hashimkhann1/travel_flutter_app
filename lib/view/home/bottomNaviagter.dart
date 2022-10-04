import 'package:flutter/material.dart';
import 'package:travel_app/utils/colorResources.dart';
import 'package:travel_app/view/home/homePages/Page1.dart';
import 'package:travel_app/view/home/homePages/page2.dart';
import 'package:travel_app/view/home/homePages/page3.dart';
import 'package:travel_app/view/home/mainHome.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({Key? key}) : super(key: key);

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  List pages = [
    MainHome(),
    Page1(),
    Page2(),
    Page3()
  ];
  int currentIndex = 0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: ColorResources.whiteColor,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black54,
          unselectedItemColor: ColorResources.grayColor,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(label: '', icon: Icon(Icons.apps,)),
            BottomNavigationBarItem(label: '', icon: Icon(Icons.bar_chart_sharp,)),
            BottomNavigationBarItem(label: '', icon: Icon(Icons.search,)),
            BottomNavigationBarItem(label: '', icon: Icon(Icons.person,))
          ],
        ),
      ),
    );
  }
}