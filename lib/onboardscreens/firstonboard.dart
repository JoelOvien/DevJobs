import 'package:DevJobs/widgets/myWidgets.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class Firstonboard extends StatefulWidget {
  Firstonboard({Key key}) : super(key: key);

  @override
  _FirstonboardState createState() => _FirstonboardState();
}

class _FirstonboardState extends State<Firstonboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:
      Column(
         children: <Widget>[
           ClipPath(
             clipper: FirstClip(),
             child: 
             Container(
              width: 500,
              height: 530,
              decoration:BoxDecoration(
      color:Hexcolor('#63B7AF') 
          )  )),
            SizedBox(height: 30.0),
        Row(
          children: [
            SizedBox(width:30.0),
        Text('Get a job ',
          style: TextStyle(
            color:Hexcolor('#63B7AF'),
            fontSize: 25 ,
            fontWeight: FontWeight.bold)),
],
        ),
        SizedBox(height: 20.0),
    Row(children: <Widget>[
       SizedBox(width: 30.0),
     Text('without stress,',
          style: TextStyle(
            color:Hexcolor('#63B7AF'),
            fontSize: 20 ,
            fontWeight: FontWeight.bold))]),
    
    Row(children: <Widget>[
      SizedBox(width: 30.0),
     Text( "Experience and as beginner",
          style: TextStyle(
            color:Hexcolor('#63B7AF'),
            fontSize: 20.7 ,
            fontWeight: FontWeight.bold))]),
             Row(children: <Widget>[
      SizedBox(width: 30.0),

     Text( "Developer",
          style: TextStyle(
            color:Hexcolor('#63B7AF'),
            fontSize: 20.7 ,
            fontWeight: FontWeight.bold))]),

        SizedBox(height: 165.0),
        Row(
          children: [
            SizedBox(width: 300),
            GestureDetector(
               onTap: () {
            Navigator.pushReplacementNamed(context, '/login');
            },
              child:
         Container(
              width: 120,
              height: 40,
              decoration:BoxDecoration(
              color:Hexcolor('#63B7AF'),
              border: Border.all(
              color:Hexcolor('#63B7AF')),
              borderRadius: BorderRadius.circular(20.0),
                ),   
              child:
              Center(
               child:
                 Text('Skip   >', style: TextStyle(
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