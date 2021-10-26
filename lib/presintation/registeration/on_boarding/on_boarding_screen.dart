import 'dart:ui';

import 'package:ezz/presintation/user/user_layout.dart';
import 'package:ezz/shared/constants.dart';
import 'package:ezz/shared/defaults.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            itemCount: 4,
            itemBuilder: (context, index) =>  Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/onboard1.png'),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            height: MediaQuery.of(context).size.height * 0.35,
            bottom: 0,
            width: MediaQuery.of(context).size.width,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white70,
                backgroundBlendMode: BlendMode.hardLight,
                borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Container(
                    width: MediaQuery.of(context).size.width*0.7,
                    child: Text(
                        'تبحث عن ذبائح وطهاة لعزائمك '
                            'او حتى طيور واسماك نوفرها لك',
                    textDirection: TextDirection.rtl,style: TextStyle(
                      color: kDarkBlueColor,
                      fontSize: 20,
                      height: 1.5,
                      fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    textDirection: TextDirection.rtl,
                    children: [
                      GestureDetector(
                        onTap: (){
                          navigateAndFinish(context, UserLayout());
                        },
                        child: Container(
                            decoration:BoxDecoration(
                              color: kDarkBlueColor,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            height: 35,
                            width: 120,
                            child: Center(
                              child: Text('تخطي',style: TextStyle(
                                color: Colors.white,
                              ),),
                            ),
                        ),
                      ),
                      SmoothPageIndicator(
                          controller: pageController,  // PageController
                          count:  4,
                          effect:  WormEffect(
                            dotHeight: 10,
                            dotWidth: 10,
                            activeDotColor: kDarkBlueColor,
                            dotColor: Colors.white
                          ), // your preferred effect
                          onDotClicked: (index){
                          }
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
