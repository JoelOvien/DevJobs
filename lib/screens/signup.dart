import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Signup extends StatefulWidget {
  Signup({Key key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       body: SingleChildScrollView(
         child:
       Column(children: <Widget>[

         SizedBox(height:150.0),

         Row(
           children:[

             SizedBox(width:20.0),
             
         Text('Sign Up',
         style: TextStyle(
           fontSize:50.0,
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
      labelText: "Full Name",
      suffixIcon: Icon(Icons.people),
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
      labelText: "Email",
      suffixIcon: Icon(Icons.email),
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
      labelText: "Password",
      suffixIcon: Icon(Icons.vpn_key),
      fillColor: Hexcolor('#F9F9F9')
       ))),

        Padding(
           padding: EdgeInsets.fromLTRB(15, 20, 15, 90),
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
      labelText: "Re-type Password",
      suffixIcon: Icon(Icons.vpn_key),
      fillColor: Hexcolor('#F9F9F9')
       ))),


       

        MaterialButton(
            height: 60,
            minWidth: 275,
            shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10)),
            onPressed: () {},
            child: Text(
              "Sign Up",
            style: TextStyle(
            fontSize: 24,
            color: Colors.white,
              )),
            color: Colors.indigo
                 ),   

              Row(
                children: [    
        Padding(
             padding: EdgeInsets.fromLTRB(120, 55, 0, 0),
             child:
               Text("Already have an account?")),

              
        Padding(
           padding: EdgeInsets.fromLTRB(0, 55, 0, 0),
           child: 
           GestureDetector(
              onTap: () {
            Navigator.pushReplacementNamed(context, '/login');
            },
             child:
                Text("Login",
                style: TextStyle(color:Colors.indigo),
            )))
       ])
       ])));
  }
}