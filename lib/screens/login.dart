import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:hexcolor/hexcolor.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: 
       Column(children: <Widget>[
         SizedBox(height:150.0),
         Row(
           children:[
             SizedBox(width:20.0),
         Text('Login',
         style: TextStyle(
           fontSize:50.0,
         ),
         )
       
       ],
         ),
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
      labelText: "Email",
      suffixIcon: Icon(Icons.email),
      fillColor: Hexcolor('#F9F9F9')
        ))),
     SizedBox(height:30.0),
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
        Row(
          children:<Widget>[
           SizedBox(width: 295.0),
           Text("Forgot Password?")],
         ),

       SizedBox(height:95.0),
        MaterialButton(
            height: 60,
            minWidth: 275,
            shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10)),
            onPressed: () {Navigator.pushReplacementNamed(context,'/homepage');},
            child: Text(
              "LogIn",
            style: TextStyle(
            fontSize: 24,
            color: Colors.white,
              ),
                  ),
            color: Colors.indigo
                 ),   

              Row(
                children: [    
        Padding(
             padding: EdgeInsets.fromLTRB(120, 170, 0, 0),
             child:
               Text("Don't have an account?")),

              
        Padding(
           padding: EdgeInsets.fromLTRB(0, 170, 0, 0),
           child: 
           GestureDetector(
              onTap: () {
            Navigator.pushNamed(context, '/signup');
            },
             child:
                Text("Sign Up",
                style: TextStyle(color:Colors.indigo),
            )))
       ])]));
  }
}