import 'package:flutter/material.dart';
import 'package:profile/components/button_list.dart';
import 'package:profile/atoms/custom_tile.dart';

class MenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ButtonList(),
        CustomTile(
          title: 'Memories',
          icon: Icons.camera,
        ),
        CustomTile(
          title: 'Favorites',
          icon: Icons.favorite,
        ),
        CustomTile(
          title: 'Presents',
          icon: Icons.card_giftcard,
        ),
        CustomTile(
          title: 'Friends',
          icon: Icons.people,
        ),
        CustomTile(
          title: 'Achivements',
          icon: Icons.star,
        ),
      ],
    );
  }
}
