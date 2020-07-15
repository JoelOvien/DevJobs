import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AlmostDone extends StatefulWidget {
  AlmostDone({Key key}) : super(key: key);

  @override
  _AlmostDoneState createState() => _AlmostDoneState();
}

class _AlmostDoneState extends State<AlmostDone> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: 
       Column(children: <Widget>[
         SizedBox(height:150.0),
         Row(
           children:[
             SizedBox(width:20.0),
         Text('Additional Details',
         style: TextStyle(
           fontSize:50.0,
         ))]),

          Row(
           children:[
             SizedBox(width:20.0),
         Text('Add if you have one!',
         style: TextStyle(
           fontSize:30.0,
           color: Colors.indigo
         ))]),

         SizedBox(height:100.0),

      Padding(
           padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
           child:
       TextField(
      decoration: new InputDecoration(
      border: new OutlineInputBorder(
      borderSide: BorderSide(color: Colors.indigo), 
      borderRadius: const BorderRadius.all(
      const Radius.circular(10.0),             
        ),
      ),
      filled: true,
      labelStyle: new TextStyle(color: Colors.grey[800]),
      labelText: "Username",
      suffixIcon: Icon(Icons.supervised_user_circle),
      fillColor: Hexcolor('#F9F9F9')
        ))),


     Padding(
           padding: EdgeInsets.fromLTRB(15, 20, 15, 10),
           child:
       TextField(
      decoration: new InputDecoration(
      border: new OutlineInputBorder(
      borderSide: BorderSide(color: Colors.indigo), 
      borderRadius: const BorderRadius.all(
      const Radius.circular(10.0),             
        ),
      ),
      filled: true,
      labelStyle: new TextStyle(color: Colors.grey[800]),
      labelText: "Skills",
      suffixIcon: Icon(Icons.work),
      fillColor: Hexcolor('#F9F9F9')
       ))),
       
        Padding(
           padding: EdgeInsets.fromLTRB(15, 20, 15, 10),
           child:
       TextField(
      decoration: new InputDecoration(
      border: new OutlineInputBorder(
      borderSide: BorderSide(color: Colors.indigo), 
      borderRadius: const BorderRadius.all(
      const Radius.circular(10.0),             
        ),
      ),
      filled: true,
      labelStyle: new TextStyle(color: Colors.grey[800]),
      labelText: "Experience Level",
      suffixIcon: Icon(Icons.compare),
      fillColor: Hexcolor('#F9F9F9')
       ))),

       SizedBox(height:95.0),

        MaterialButton(
            height: 60,
            minWidth: 275,
            shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10)),
            onPressed: () {Navigator.pushReplacementNamed(context,'/homepage');},
            child: Text(
              "NEXT",
            style: TextStyle(
            fontSize: 24,
            color: Colors.white,
              ),
                  ),
            color: Colors.indigo
                 )]));
  }
}