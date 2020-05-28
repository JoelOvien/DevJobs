import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  const JobCard({
    Key key,
    @required this.title,
    this.price,
    this.image,
    @required this.location,
  }) : super(key: key);

  final String title;
  final String price;
  final Widget image;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: buildListTile(),
    );
  }

  buildListTile() => ListTile(
        contentPadding: EdgeInsets.only(left: 33, top: 13),
        leading: CircleAvatar(),
        title: Text(
          '$title',
          style: TextStyle(fontSize: 18),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '$price',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                  color: Colors.green),
            ),
            Divider(
              color: Colors.black,
            ),
          ],
        ),
        trailing: Container(
          margin: EdgeInsets.only(
            right: 18,
          ),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Text(
            '$location',
            style: TextStyle(
                color: Colors.white, fontSize: 13, fontWeight: FontWeight.w300),
          ),
        ),
      );
}
