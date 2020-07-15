import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: _buildUI(),
      ),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.indigo),
      elevation: 0,
      backgroundColor: Colors.white,
    );
  }

  Widget _buildUI() {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Center(
            child: CircleAvatar(
              radius: 50,
              child: Icon(
                Icons.add_a_photo,
                size: 50,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 15),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Username',
                  contentPadding:
                      EdgeInsets.only(bottom: 10, top: 10, left: 10),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16))),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 15),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Skills',
                  contentPadding:
                      EdgeInsets.only(bottom: 10, top: 10, left: 10),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16))),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 15),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Experience Level',
                  contentPadding:
                      EdgeInsets.only(bottom: 10, top: 10, left: 10),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16))),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 15),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Portfolio Link',
                  contentPadding:
                      EdgeInsets.only(bottom: 10, top: 10, left: 10),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16))),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 15),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Additional Link(e.g Dribbble etc.)',
                  contentPadding:
                      EdgeInsets.only(bottom: 10, top: 10, left: 10),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16))),
            ),
          ),
        ],
      ),
    );
  }
}
