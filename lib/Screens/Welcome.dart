import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);
  static const String id = 'Welcome';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   // title: Text('Sip a Blog'),
        //   title: new Image(
        //     image: new ExactAssetImage("images/logo2.png"),
        //     height: 35.0,
        //     width: 100.0,
        //     alignment: FractionalOffset.centerRight,
        //   ),
        //   backgroundColor: Colors.transparent,
        // ),
        body: Stack(
          children: [
            // Positioned(
            //   child: AppBar(
            //     // title: new Image(
            //     //   image: new AssetImage("images/logo2.png"),
            //     //   height: 35.0,
            //     //   width: 100.0,
            //     // ),
            //     elevation: 0,
            //     actions: [ImageIcon(AssetImage("images/logo2.png"))],
            //     backgroundColor: Colors.transparent,
            //   ),
            // ),
            SafeArea(
              child: Container(
                margin: EdgeInsets.only(top: 2.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/background1.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: NetworkImage('https://media.tenor.com/images/ee7ec2aee427884dab05c1348deae810/tenor.gif'),
                          height: 105,
                          width: 105,
                        ),
                        Image(
                          image: AssetImage('images/logo2.png'),
                          height: 105,
                          width: 210,
                        ),
                      ],
                    ),
                    // Image.asset('images/logo2.png'),
                    CarouselSlider(
                      items: [
                        Container(
                          // margin: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage('images/medicine.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text('Medicine'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage('images/lifestyle.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text('Lifestyle'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage('images/facts.jfif'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text('Facts'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(8.0),
                            image: DecorationImage(
                              image: AssetImage('images/keepGo.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text('Motivation'),
                          ),
                        ),
                      ],
                      options: CarouselOptions(
                        height: 200.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 600),
                        viewportFraction: 0.9,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
