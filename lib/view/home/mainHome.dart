import 'package:flutter/material.dart';
import 'package:travel_app/utils/colorResources.dart';
import 'package:travel_app/widgets/app_text.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> with TickerProviderStateMixin {

  var images = {
    "balloning.png" : "Balloning",
    "hiking.png" : "Hiking",
    "kayaking.png" : "Kayaking",
    "snorkling.png" : "Snorkling"
  };

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.menu,
                    size: 30.0,
                    color: ColorResources.blackColor,
                  ),
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
            const SizedBox(
              height: 30.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
              child: AppText(
                text: 'Discover',
                textSize: 26.0,
                textWeight: FontWeight.w800,
              ),
            ),
            //  tabbar
            Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                  controller: _tabController,
                  labelPadding: const EdgeInsets.only(left: 14.0, right: 20.0),
                  labelColor: ColorResources.blackColor,
                  unselectedLabelColor: ColorResources.grayColor,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: ColorResources.grayColor,
                  isScrollable: true,
                  tabs: [
                    const Tab(
                      text: 'Places',
                    ),
                    Tab(
                      text: 'Inspiration',
                    ),
                    Tab(
                      text: 'Emotion',
                    )
                  ]),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              height: 280.0,
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                    itemCount : 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.only(right: 8.0),
                      width: 200.0,
                      height: 280.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                          image: DecorationImage(
                              image: AssetImage('images/mountain.jpeg'),
                              fit: BoxFit.cover)),
                    );
                  }),
                  Text('done'),
                  Text('Hi'),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(text: 'Explore more',textSize: 22.0,textWeight: FontWeight.w700,),
                  AppText(text: 'See all',textcolor: ColorResources.grayColor,)
                ],
              ),
            ),
            // SizedBox(height: 10.0,),
            Container(
              height: 120.0,
              width: double.maxFinite,
              decoration: BoxDecoration(
                // border: Border.all(color: Colors.black)
              ),
              child: ListView.builder(
                itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext , index){
                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 11.0,right: 11.0,),
                          width: 90.0,
                          height: 90.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22.0),
                            color: Colors.grey,
                            image: DecorationImage(
                              image: AssetImage('images/'+images.keys.elementAt(index)),
                              fit: BoxFit.cover
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0,),
                        AppText(text: images.values.elementAt(index),textcolor: ColorResources.lightBlue,)
                      ],
                    );
                  }
              ),
            ),
            // Container(
            //   color: Colors.black,
            //   height: 200.0,
            // )
          ],
        ),
      ),
    );
  }
}
