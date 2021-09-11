import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);
  static const String id = 'About';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AboutBuild(),
    );
  }
}

class AboutBuild extends StatefulWidget {
  const AboutBuild({Key? key}) : super(key: key);

  @override
  _AboutBuildState createState() => _AboutBuildState();
}

class _AboutBuildState extends State<AboutBuild> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // margin: EdgeInsets.only(top: 2.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/pinkbackground.jfif'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
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
            Text(
              'Hello Everyone!\nWelcome to Sip A Blog,',
              textAlign: TextAlign.left,
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white70,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "I'm Laya Bitla undergoing my Medicine graduation at Osmania Medical college, Hyderabad, India. A very enthusiastic and optimistic person with a motive to share useful information through my blogs. I write blogs emphasising on health, medicine, lifestyle, motivation, positivity, wellness, healing, nature, facts, and many more. I've come up with this interface to share my thoughts and knowledge with you guys. Life for me is a gift , I try to use my gift the best way possible. I try to love not hate, I try to be the reason for somebody’s smile and happiness, I try to help, I try to stay positive and spread positivity, and finally I would love to share my knowledge and make myself useful and be a part of making this world a better place.",
                textAlign: TextAlign.left,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
            ),
            Text(
              'Thank you!!',
              textAlign: TextAlign.center,
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
