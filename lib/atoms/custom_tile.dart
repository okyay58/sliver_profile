import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  final String title;
  final IconData icon;

  CustomTile({
    this.title,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(5.0),
        child: Icon(
          icon,
          color: Colors.white,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          gradient: LinearGradient(
            colors: [
              Colors.purple,
              Colors.pink,
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
      ),
      title: Text(title),
      trailing: Icon(Icons.chevron_right),
    );
  }
}
