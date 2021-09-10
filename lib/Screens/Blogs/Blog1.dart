import 'package:flutter/material.dart';

class Blog1 extends StatelessWidget {
  const Blog1({Key? key}) : super(key: key);

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

