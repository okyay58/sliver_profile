import 'package:flutter/material.dart';
import 'package:profile/components/profile_sliver.dart';
import 'package:profile/components/menu_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              ProfileSliver(),
            ];
          },
          body: Container(
            padding: EdgeInsets.all(10.0),
            child: MenuList(),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              title: Text(''),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              title: Text(''),
              icon: Icon(Icons.bookmark),
            ),
            BottomNavigationBarItem(
              title: Text(''),
              icon: Icon(Icons.thumb_up),
            ),
            BottomNavigationBarItem(
              title: Text(''),
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
