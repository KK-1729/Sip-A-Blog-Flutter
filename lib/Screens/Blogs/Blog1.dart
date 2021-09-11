import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Blog1 extends StatelessWidget {

  final int blogno = 1;

  // final firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar:
      body: Container(
        child: Column(
            children: [
              //Image(image: image)
              Expanded(child: Container(child: Text('hi there', style: TextStyle(color: Colors.black),)))
            ],
          ),
      ),
    );
  }
}

