import 'package:auht/OnBoading/slider.dart';
import 'package:auht/OnBoading/slider_model.dart';
import 'package:auht/login_screen.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  int currentIndex = 0;
  List slider = [
    SliderModel(img: "assets/images/onboarding1.png", title: "Fashion Store", description: "Browse and order directly from the App"),
    SliderModel(img: "assets/images/onboarding2.png", title: "Fast and Secure Payment", description: "There are many payment options available"),
    SliderModel(img: "assets/images/onboarding3.png", title: "Shipping", description: "Your Order Is On The Way"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (value){
                  setState(() {
                    currentIndex = value;
                  });
                },
                itemCount: slider.length,
                itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(slider[index].img),
                      SizedBox(height: 25,),
                      ListTile(
                        title:Text(slider[index].title,style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                        subtitle: Text(slider[index].description,style: TextStyle(fontSize: 20,),),
                      ),
                      SizedBox(height: 40,),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(slider.length, (index) => buildDot(index, context))
                        ),
                      ),
                      SizedBox(height: 40,),
                      currentIndex == slider.length -1 ? Container(
                        height: 40,
                        width: double.infinity,
                        // color: Color(0xFFFFAA00),
                        child: ElevatedButton(
                            onPressed: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login(),));
                            },
                            child: Text("Get Started",style: TextStyle(color: Colors.white),),
                            style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),),backgroundColor: Color(0xFFFFAA00)),
                        ),
                      ) : SizedBox()
                    ],
                  ),
                );
              },),
            )
          ],
        ),
      ),
    );
  }
  Container buildDot(int index, BuildContext context){
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFFFFAA00),
      ),
    );
  }
}
