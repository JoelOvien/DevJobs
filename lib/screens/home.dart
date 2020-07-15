import 'package:flutter/material.dart';
import 'package:DevJobs/cards/jobCard.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: SingleChildScrollView(child: _buildBody()),
    );
  }

  Widget _buildBody() {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
          width: double.infinity,
          child: RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            color: Colors.indigo,
            onPressed: () {},
            child: Text(
              'New Jobs',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              labelStyle: TextStyle(color: Colors.indigo),
              labelText: 'Search Jobs',
              icon: Icon(
                Icons.search,
                color: Colors.indigo,
              ),
            ),
          ),
        ),
        SizedBox(height: 7),
        _buildJobCard(),
      ],
    );
  }
}

Widget _buildJobCard() {
  return Container(
    child: Column(
      children: <Widget>[
        GestureDetector(
          onTap: () {},
          child: JobCard(
            title: 'UI designer',
            price: 'N50,000',
            location: 'Lagos',
          ),
        ),
        JobCard(
          price: 'Negotiable',
          title: 'Web developer',
          location: 'Port-Harcourt',
        ),
        JobCard(
          title: 'Flutter Developer',
          price: "N900,000",
          location: 'Lagos',
        ),
        JobCard(
          title: ' ',
          price: ' ',
          location: '',
        ),
      ],
    ),
  );
}

Widget buildAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.indigo),
    title: Row(
      children: <Widget>[
        Text(
          'Dev',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        Text(
          'Jobs',
          style: TextStyle(color: Colors.yellow, fontSize: 25),
        )
      ],
    ),
    actions: <Widget>[
      IconButton(
        color: Colors.indigo,
        icon: Icon(Icons.notifications_none),
        onPressed: () {},
      )
    ],
  );
}
