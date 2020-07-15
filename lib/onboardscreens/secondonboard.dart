import 'package:DevJobs/widgets/myWidgets.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Secondboard extends StatefulWidget {
  Secondboard({Key key}) : super(key: key);

  @override
  _SecondboardState createState() => _SecondboardState();
}

class _SecondboardState extends State<Secondboard> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
       body:
      Column(
         children: <Widget>[
           ClipPath(
             clipper: SecondClip(),
             child: 
             Container(
              width: 500,
              height: 530,
              decoration:BoxDecoration(
      color:Hexcolor('#FFD745') 
          )  )),
            SizedBox(height: 30.0),
        Row(
          children: [
            SizedBox(width:30.0),
        Text('Most are Remote! ',
          style: TextStyle(
            color:Hexcolor('#FFD745'),
            fontSize: 25 ,
            fontWeight: FontWeight.bold)),
],
        ),
        SizedBox(height: 20.0),
    Row(children: <Widget>[
       SizedBox(width: 30.0),
     Text('Jobs are remote and can be from',
          style: TextStyle(
            color:Hexcolor('#FFD745'),
            fontSize: 20 ,
            fontWeight: FontWeight.bold))]),
    
    Row(children: <Widget>[
      SizedBox(width: 30.0),
     Text( "Countries outside",
          style: TextStyle(
            color:Hexcolor('#FFD745'),
            fontSize: 20.7 ,
            fontWeight: FontWeight.bold))]),
             Row(children: <Widget>[
      SizedBox(width: 30.0),

     Text( "Nigeria",
          style: TextStyle(
            color:Hexcolor('#FFD745'),
            fontSize: 20.7 ,
            fontWeight: FontWeight.bold))]),

        SizedBox(height: 165.0),
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
              color:Hexcolor('#FFD745'),
              border: Border.all(
              color:Hexcolor('#FFD745')),
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