import 'package:flutter/material.dart';
import 'package:sip_a_blog/Screens/Blogs/Blog1.dart';
import 'package:sip_a_blog/Screens/Blogs/Blog2.dart';

class Blog_preview extends StatelessWidget {

  final Image image;
  final String text;
  final Widget pagename;

  Blog_preview(this.text, this.image, this.pagename);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        child: Container(
          child: Column(
            children: [
              Container(

                  child: image
              ),
              Container(child: Text(text, style: TextStyle(fontSize: 18.0, color: Colors.black),))
            ],
          ),
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){return pagename;}));
        }
    );
  }
}