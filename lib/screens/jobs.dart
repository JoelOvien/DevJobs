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

  Widget _jobStatusChip(int number, String status) {
    var selectedChip;
    return Padding(
      padding: EdgeInsets.all(5),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedChip = number;
          });
        },
        child: Chip(
          label: Text(
            status,
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: selectedChip == number ? Colors.indigo : Colors.grey,
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _jobStatusChip(0, 'Accepted'),
              _jobStatusChip(1, 'In Progress'),
              _jobStatusChip(2, 'Rejected'),
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

  _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height / 0.2,
            color: Colors.grey[600],
            child: Container(
              padding: EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: _buildJobDescription(),
            ),
          );
        });
  }

  _buildJobDescription() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CircleAvatar(),
        ListTile(
          title: Text(
            'UI designer',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          subtitle: Text(
            'N50,000',
            style: TextStyle(color: Colors.green),
          ),
        ),
        ListTile(
          title: Text(
            'Skills Required',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                decoration: TextDecoration.underline,
                decorationThickness: 3,
                decorationColor: Colors.yellow),
          ),
          subtitle: Column(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              Text(
                'User Experience and User Experience Design, Figma, UI/UX',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 7,
        ),
        ListTile(
          title: Text(
            'Description',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                decoration: TextDecoration.underline,
                decorationThickness: 3,
                decorationColor: Colors.yellow),
          ),
          subtitle: Column(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              Text(
                'Need a UI designer to develop a dating app and website with a clean interface',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          child: MaterialButton(
            shape: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(16),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Apply',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.indigo,
          ),
        ),
      ],
    );
  }

  Widget _buildJobCard() {
    return Container(
      child: Column(
        children: <Widget>[
          GestureDetector(
            child: JobCard(
              title: 'UI designer',
              price: 'N50,000',
              location: 'Lagos',
            ),
            onTap: () => _onButtonPressed(),
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
