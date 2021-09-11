import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Blog2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar:
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(children: [
            Image.asset('images/Blog2_image.jpeg'),
            SizedBox(height: 30.0,),
            Text('Blog text')
          ],),),
      ) ,

    );
  }
}

