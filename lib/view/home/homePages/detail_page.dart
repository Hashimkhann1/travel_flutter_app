import 'package:flutter/material.dart';
import 'package:travel_app/utils/colorResources.dart';
import 'package:travel_app/widgets/app_text.dart';


class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite ,
        child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
            height: 340,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/mountain.jpeg'),
                fit: BoxFit.cover
              )
            ),
          )),
          Positioned(
            top: 30,
              left: 20.0,
              child: Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.menu,color: ColorResources.whiteColor,))
                ],
              )),
          Positioned(
            top: 320,
              child: Container(
                padding: EdgeInsets.only(left: 20.0,right: 20.0,top: 14.0),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28.0),
                  color: ColorResources.whiteColor
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(text: 'Yasemito',textSize: 30.0,textWeight: FontWeight.w500,),
                        AppText(text: '\$250',textSize: 26.0,textWeight: FontWeight.w700,textcolor: ColorResources.lightBlue,)
                      ],
                    ),
                    SizedBox(height: 6.0,),
                    Row(
                      children: [
                        Icon(Icons.location_on,color: ColorResources.lightBlue,),
                        AppText(text: 'Pakistan, Charsadda',textcolor: ColorResources.lightBlue,textSize: 12.0,)
                      ],
                    ),
                    SizedBox(height: 6.0,),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index){
                            return Icon(Icons.star,color: ColorResources.yellowColor,);
                          }),
                        ),
                        AppText(text: '(4.0)',textcolor: ColorResources.lightBlue,)
                      ],
                    ),
                    SizedBox(height: 30.0,),
                    AppText(text: 'People',textSize: 24.0,textWeight: FontWeight.w600,)
                  ],
                ),
              )
          )
          ],
        ),
      ),
    );
  }
}
