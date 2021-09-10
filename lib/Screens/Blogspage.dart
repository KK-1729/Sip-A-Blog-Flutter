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
        child: Column(
          children: [
            Row(

              children: [

                Flexible(
                  flex: 1,
                  child: TextButton(
                    child: Container(
                      child: Column(
                        children: [
                          Container(

                              child: Image.asset('images/logo.png')
                          ),
                          Container(child: Text('Trial text'))
                        ],
                      ),
                    ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){return Blog1();}));
                      }
                  ),

                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  flex: 1,
                  child: TextButton(
                    child: Container(
                      child: Column(
                        children: [
                          Container(

                              child: Image.asset('images/logo.png')
                          ),
                          Container(child: Text('Trial text'))
                        ],
                      ),
                    ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){return Blog2();}));
                      }
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


