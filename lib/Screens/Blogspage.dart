import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sip_a_blog/Screens/Blogs/Blog2.dart';
import 'Blogs/Blog1.dart';
import 'Blogs/Blog2.dart';
import 'package:sip_a_blog/widgets/blogpreview.dart';
import 'package:sip_a_blog/Screens/Blogs/Blog1.dart';

class Blogspage extends StatelessWidget {
  const Blogspage({Key? key}) : super(key: key);
  static const String id = 'Blogspage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/pinkbackground.jfif'),
              fit: BoxFit.fill,
            ),
          ),
          child: Row(
            children: [

              Flexible(
                flex: 1,
                child: Column(
                  children: [
                    Blog_preview('Positive thoughts on life',
                        Image.asset('images/Blog1_image.jpeg'),
                        Blog1()),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Column(children: [
                  Blog_preview('The LGBTQ pride month', Image.asset('images/Blog2_image.jpeg'), Blog2())
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}




