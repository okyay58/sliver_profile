import 'package:flutter/material.dart';
import 'package:profile/atoms/profile.dart';
import 'package:profile/atoms/stat.dart';

class ProfileSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 220.0,
      floating: false,
      pinned: true,
      title: Text(
        'Profile',
        style: TextStyle(fontSize: 20.0),
      ),
      elevation: 0.0,
      flexibleSpace: FlexibleSpaceBar(
        background: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.deepPurple,
                  Colors.purple,
                  Colors.pink,
                ],
              ),
            ),
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 30.0,
                    )
                  ],
                ),
                Profile(
                  profileImg: 'assets/profile.jpg',
                  name: 'John',
                  city: 'California',
                ),
                Container(
                  margin: EdgeInsets.only(top: 30.0),
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Stat(
                          title: 'Followers',
                          stat: '5.7m',
                        ),
                        VerticalDivider(
                          color: Colors.white,
                        ),
                        Stat(
                          title: 'Following',
                          stat: '13k',
                        ),
                        VerticalDivider(
                          color: Colors.white,
                        ),
                        Stat(
                          title: 'Total Like',
                          stat: '72m',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
