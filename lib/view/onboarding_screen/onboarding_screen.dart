import 'package:flutter/material.dart';
import 'package:travel_app/utils/colorResources.dart';
import 'package:travel_app/view/home/bottomNaviagter.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/textBtn.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List Images = [
    'welcome-one.png',
    'welcome-two.png',
    'welcome-three.png',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(Images.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: Images.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/${Images[index]}'),
                      fit: BoxFit.cover)),
              child: Container(
                margin: EdgeInsets.only(top: 140.0, left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          text: 'Trips',
                          textWeight: FontWeight.w800,
                          textSize: 30.0,
                        ),
                        AppText(
                          text: 'Mountain',
                          textSize: 30.0,
                          textcolor: Color(0xFF969696),
                        ),
                        SizedBox(
                          height: 18.0,
                        ),
                        Container(
                            width: 248.0,
                            child: AppText(
                              text:
                                  'Moutain hikes give you an incredible sense of freedom along with endurance tests',
                              textcolor: Color(0xFFb3b3b3),
                            )),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextBtn(
                          btnText: index == 2 ? 'HOME' : 'SKIP',
                          btnBackColor: ColorResources.lightBlue,
                          btnTextcolor: ColorResources.whiteColor,
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 12.0),
                          pressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BottomNavigator()));
                          },
                        )
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 3.0),
                          width: 16.0,
                          height: index == indexDots ? 40.0 : 16,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index == indexDots
                                  ? ColorResources.lightBlue
                                  : ColorResources.grayColor.withOpacity(0.5)),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
