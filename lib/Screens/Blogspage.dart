import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  flex: 1,
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
