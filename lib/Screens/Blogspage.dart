import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sip_a_blog/Screens/Blogs/Blog2.dart';
import 'Blogs/Blog1.dart';
import 'Blogs/Blog2.dart';

class Blogspage extends StatelessWidget {
  const Blogspage({Key? key}) : super(key: key);
  static const String id = 'Blogspage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [

            Flexible(
              flex: 1,
              child: Column(
                children: [
                  TextButton(
                    child: Container(
                      child: Column(
                        children: [
                          Container(

                              child: Image.asset('images/Blog1_image.jpeg')
                          ),
                          Container(child: Text('Positive thoughts on life', style: TextStyle(fontSize: 18.0, color: Colors.black),))
                        ],
                      ),
                    ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){return Blog1();}));
                      }
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Column(children: [
                TextButton(
                    child: Container(
                      child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(

                              child: Image.asset('images/Blog2_image.jpeg')
                          ),
                          Container(child: Text('The LGBTQ pride month',style: TextStyle(fontSize: 18.0, color: Colors.black),))
                        ],
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){return Blog2();}));
                    }
                )
              ],),
            )
          ],
        ),
      ),
    );
  }
}


