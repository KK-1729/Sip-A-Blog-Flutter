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
        home: Mainbuild());

  }
  }

  class Mainbuild extends StatefulWidget {
    const Mainbuild({Key? key}) : super(key: key);

    @override
    _MainbuildState createState() => _MainbuildState();
  }

  class _MainbuildState extends State<Mainbuild> {
  int _selectedIndex = 0;
  static const List<Widget> Pagelist =  [
    Welcome(),
    Blogspage(),
    About(),
    Contact()
  ];
  void switchindex (int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
            body: IndexedStack(
              index: _selectedIndex,
                children: Pagelist),
            bottomNavigationBar: BottomNavigationBar(
                unselectedItemColor: Colors.black,
                items: [
              BottomNavigationBarItem(
               // backgroundColor: Colors.red,
              icon: Icon(Icons.ad_units),
              label: 'Welcome'
                           ),
                  BottomNavigationBarItem(
                    //backgroundColor: Colors.blue,
                    icon: Icon(Icons.photo_album),
                    label: 'Blogs',
                  ),
                  BottomNavigationBarItem(
                    //backgroundColor: Colors.green,
                    icon: Icon(Icons.book),
                    label: 'About',
                  ),
                  BottomNavigationBarItem(
                    //backgroundColor: Colors.pink,
                    icon: Icon(Icons.contact_page),
                    label: 'Contact',
                  ),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.amber[800],
                onTap: (int index) => setState(() {
                  print(_selectedIndex);
                  // _selectedIndex = index;
                  switchindex(index);
                }),
              ),

        ) ,
        // initialRoute: About.id,
        // routes: {
        //   Welcome.id: (context) => Welcome(),
        //   Blogspage.id: (context) => Blogspage(),
        //   About.id: (context) => About(),
        //   Contact.id: (context) => Contact(),
        // },
      );;
    }
  }



// syntax to go to a particular screen: (example: About screen)
//  onpressed: () {
//   Navigator.pushnamed(context, About.id);
// }
