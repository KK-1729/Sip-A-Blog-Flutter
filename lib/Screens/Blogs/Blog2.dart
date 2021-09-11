import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Blog2 extends StatelessWidget {

  final List<Widget> blogcontent = [
    Image.asset('images/Blog2_image.jpeg'),
    SizedBox(height: 30.0,),
    Text(
      "The pride month was not born out of a need to celebrate being gay,lesbian,bisexual or transgender but the right to exist without persecution. All people should be treated equally regardless of who they are and who they love. Pride month is not only about celebrating ones sexual identity but also about being proud of ourselves, no matter what we are . At the end we are all nature’s creation. We are born to love, to care, to help the world to evolve better, to be humans without any boundaries. But , we have forgotten to be compassionate because of the social stigma’s and tags.",
    ),
    SizedBox(height: 10,),
    Text("We need to understand “ALL COLOURS ARE BEAUTIFUL” and IT TAKES A LOT OF COURAGE TO GROW UP AND BE WHO YOU REALLY ARE . It is time that we all see gender as a spectrum instead of two sets of opposite ideals. LOVE AND COMPASSION ARE NECESSITIES, NOT LUXURIES. WITHOUT THEM, HUMANITY CANNOT SURVIVE.")

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




