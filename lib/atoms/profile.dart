import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String profileImg;
  final String name;
  final String city;

  Profile({
    this.profileImg,
    this.name,
    this.city,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10.0,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              profileImg,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              Text(
                city,
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              )
            ],
          ),
        ),
      ],
    );
  }
}
