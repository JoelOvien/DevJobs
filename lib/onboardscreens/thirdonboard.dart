import 'package:DevJobs/widgets/myWidgets.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Thirdboard extends StatefulWidget {
  Thirdboard({Key key}) : super(key: key);

  @override
  _ThirdboardState createState() => _ThirdboardState();
}

class _ThirdboardState extends State<Thirdboard> {
  @override
  Widget build(BuildContext context) {
       return Scaffold(
       body:
      Column(
         children: <Widget>[
           ClipPath(
             clipper: ThirdClip(),
             child: 
             Container(
              width: 500,
              height: 530,
              decoration:BoxDecoration(
      color:Hexcolor('#2B8BFF') 
          )  )),
            SizedBox(height: 30.0),
        Row(
          children: [
            SizedBox(width:30.0),
        Text('All Countries',
          style: TextStyle(
            color:Hexcolor('#2B8BFF'),
            fontSize: 25 ,
            fontWeight: FontWeight.bold)),
],
        ),
        SizedBox(height: 20.0),
    Row(children: <Widget>[
       SizedBox(width: 30.0),
     Text('DevJobs gives acess to tech',
          style: TextStyle(
            color:Hexcolor('#2B8BFF'),
            fontSize: 20 ,
            fontWeight: FontWeight.bold))]),
    
    Row(children: <Widget>[
      SizedBox(width: 30.0),
     Text( "Jobs around the world",
          style: TextStyle(
            color:Hexcolor('#2B8BFF'),
            fontSize: 20.7 ,
            fontWeight: FontWeight.bold))]),
             Row(children: <Widget>[
      SizedBox(width: 30.0),

  ]),

        SizedBox(height: 190.0),
        Row(
          children: [
            SizedBox(width: 300),
            GestureDetector(
               onTap: () {
            Navigator.pushNamed(context, '/login');
            },
              child:
         Container(
              width: 120,
              height: 40,
              decoration:BoxDecoration(
              color:Hexcolor('#2B8BFF'),
              border: Border.all(
              color:Hexcolor('#2B8BFF')),
              borderRadius: BorderRadius.circular(20.0),
                ),   
              child:
              Center(
               child:
                 Text('Get Started', style: TextStyle(
                  color: Colors.white,
                  fontSize: 15 ,
                  fontWeight: FontWeight.bold)))
  
            ),
            )
],
        ),
         ]
      ),
    );
  }
}