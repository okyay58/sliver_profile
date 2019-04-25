import 'package:flutter/material.dart';
import 'package:profile/atoms/list_button.dart';

class ButtonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ListButton(
            colors: [
              Colors.purple,
              Colors.pink,
            ],
            title: 'Live',
            subtitle: 'Broadcast',
          ),
          ListButton(
            colors: [
              Colors.blue,
              Colors.blueAccent,
            ],
            title: 'My',
            subtitle: 'Wallet',
          ),
          ListButton(
            colors: [
              Colors.red,
              Colors.orange,
            ],
            title: 'Game',
            subtitle: 'Center',
          ),
        ],
      ),
    );
  }
}
