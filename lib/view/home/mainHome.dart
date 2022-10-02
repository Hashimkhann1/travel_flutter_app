import 'package:flutter/material.dart';
import 'package:travel_app/utils/colorResources.dart';
import 'package:travel_app/widgets/app_text.dart';


class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start ,
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu,size: 30.0,color: ColorResources.blackColor,),
                  Container(
                    width: 42.0,
                      height: 42.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 40.0,),
            AppText(text: 'Discover',textSize: 26.0,textWeight: FontWeight.w800,),
          //  tabbar
            Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                controller: _tabController,
                  labelPadding: EdgeInsets.only(left: 14.0,right: 20.0),
                  labelColor: ColorResources.blackColor,
                  unselectedLabelColor: ColorResources.grayCoor,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: ColorResources.blackColor,
                  isScrollable: true,
                  tabs: [
                    Tab(text: 'Places',),
                    Tab(text: 'Inspiration',),
                    Tab(text: 'Emotion',)
                  ]
              ),
            ),
            Container(
              height: 300.0,
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Text('ok'),
                  Text('done'),
                  Text('Hi'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
