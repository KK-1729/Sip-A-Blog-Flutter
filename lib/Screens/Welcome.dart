import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);
  static const String id = 'Welcome';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BodyBuild(),
    );
  }
}

class BodyBuild extends StatefulWidget {
  const BodyBuild({Key? key}) : super(key: key);

  @override
  _BodyBuild createState() => _BodyBuild();
}

class _BodyBuild extends State<BodyBuild> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget currentWidget = Welcome();
    WidgetBuilder builder = (BuildContext context) => Welcome();

    return Scaffold(
      body: Container(
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
            CarouselSlider(
              items: [
                Container(
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
    );
  }
}
