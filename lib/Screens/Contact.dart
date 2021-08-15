import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);
  static const String id = 'Contact';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContactBuild(),
    );
  }
}

class ContactBuild extends StatefulWidget {
  const ContactBuild({Key? key}) : super(key: key);

  @override
  _ContactBuildState createState() => _ContactBuildState();
}

class _ContactBuildState extends State<ContactBuild> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // margin: EdgeInsets.only(top: 2.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background1.jpg'),
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
            Image(
              image: AssetImage('images/insta_qr.jpeg'),
              width: 200,
              height: 500,
            ),
          ],
        ),
      ),
    );
  }
}
