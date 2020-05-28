import 'package:flutter/material.dart';
// import 'editProfile.dart';
import 'home.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
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
                  Icons.person_outline,
                  size: 50,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Ovienloba Joel',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            _editButton(),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                'Skills',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            _skillsSection(),
            SizedBox(
              height: 7,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                'Experience Level',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.grey,
                      size: 12,
                    ),
                    Text(
                      'one year',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    )
                  ],
                )),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                'Portfolio Link',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                'https://zazacodes.xyz',
                style: TextStyle(fontSize: 15, color: Colors.blue),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                'Additional Link(e.g Dribbble)',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _skillsSection() => Wrap(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5),
            child: Chip(
              labelStyle: TextStyle(color: Colors.white),
              label: Text('UI/UX'),
              backgroundColor: Colors.indigo,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5),
            child: Chip(
              labelStyle: TextStyle(color: Colors.white),
              label: Text('Frontend Developer'),
              backgroundColor: Colors.indigo,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5),
            child: Chip(
              labelStyle: TextStyle(color: Colors.white),
              label: Text('UI Design'),
              backgroundColor: Colors.indigo,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5),
            child: Chip(
              labelStyle: TextStyle(color: Colors.white),
              label: Text('User Experience Design'),
              backgroundColor: Colors.indigo,
            ),
          ),
        ],
      );

  _editButton() => ListTile(
        trailing: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/editProfile');
          },
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Text(
              'Edit',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
}
