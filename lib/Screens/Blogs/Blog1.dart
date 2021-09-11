import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Blog1 extends StatelessWidget {
  final List<Widget> blogcontent = [
    Image.asset('images/Blog1_image.jpeg'),
    SizedBox(height: 30.0,),
    Text(
        "The most common example of different perspective is a glass half filled with water. Few see it as half filled and few as half empty. Even right and wrong about any topic is a matter of perspective from which one sees. The same applies for life too. Believing in negative thoughts is the single greatest obstruction to success.Believe in the power of positive thinking , our thoughts create the perspective of ourselves and the world around us.",
    ),
    SizedBox(height: 10,),
    Text("Each day, due to lot of uncertain situations, few people lose their life, few lose their family members.It’s not always about losing life but they may become physically or mentally sick and lose hope as each day passes.              After having a view about all the uncertainties listed above, just imagine how lucky we are, to have lot of reasons to smile at this moment . Be thankful for every little thing in your life because lot of people don’t have even these. "
        "   Even with lot of difficulties, people stand up for themselves and work hard to beat all the odds in order to reach their goals, because they believe in the power of positivity and courage to step ahead each day.As the life goes on , it’s important to create opportunities rather than wasting time in waiting for them or grieving about sad part of your life.")

  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar:
      body: SafeArea(
        child: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('images/bluebackground.jpg'),
    fit: BoxFit.fill,) ),
          padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
          child: Scrollbar(
            child: ListView(
              children: blogcontent
              ),
          ),
          ),),
      );
  }
}




// Image.asset('images/Blog1_image.jpeg'),
// SizedBox(height: 30.0,),
// Text(
// "The most common example of different perspective is a glass half filled with water. Few see it as half filled and few as half empty. Even right and wrong about any topic is a matter of perspective from which one sees. The same applies for life too. Believing in negative thoughts is the single greatest obstruction to success.Believe in the power of positive thinking , our thoughts create the perspective of ourselves and the world around us."
// ),
// Text("Each day, due to lot of uncertain situations, few people lose their life, few lose their family members.It’s not always about losing life but they may become physically or mentally sick and lose hope as each day passes.              After having a view about all the uncertainties listed above, just imagine how lucky we are, to have lot of reasons to smile at this moment . Be thankful for every little thing in your life because lot of people don’t have even these.              Even with lot of difficulties, people stand up for themselves and work hard to beat all the odds in order to reach their goals, because they believe in the power of positivity and courage to step ahead each day.As the life goes on , it’s important to create opportunities rather than wasting time in waiting for them or grieving about sad part of your life.")

