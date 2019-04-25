import 'package:flutter/material.dart';

class Stat extends StatelessWidget {
  final String title;
  final String stat;

  Stat({
    this.title,
    this.stat,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
          Text(
            stat,
            style: TextStyle(fontSize: 15.0, color: Colors.white),
          )
        ],
      ),
    );
  }
}
