import 'package:flutter/material.dart';

import 'Screens/About.dart';
import 'Screens/Blogspage.dart';
import 'Screens/Contact.dart';
import 'Screens/Welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Blogspage.id,
      routes: {
        Welcome.id: (context) => Welcome(),
        Blogspage.id: (context) => Blogspage(),
        About.id: (context) => About(),
        Contact.id: (context) => Contact(),
      },
    );
  }
}

// syntax to go to a particular screen: (example: About screen)
//  onpressed: () {
//   Navigator.pushnamed(context, About.id);
// }
