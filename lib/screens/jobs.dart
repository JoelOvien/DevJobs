import 'package:flutter/material.dart';
import 'package:DevJobs/cards/jobCard.dart';
import 'home.dart';

class JobPage extends StatefulWidget {
  @override
  _JobPageState createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5),
                child: Chip(
                  label: Text('All'),
                  backgroundColor: Colors.yellow,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Chip(
                  label: Text('Software'),
                  backgroundColor: Colors.yellow,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Chip(
                  label: Text('Graphics'),
                  backgroundColor: Colors.yellow,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Chip(
                  label: Text('Junior Dev'),
                  backgroundColor: Colors.yellow,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          _buildJobCard(),
        ],
      ),
    );
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
        ],
      ),
    );
  }
}
