import 'package:flutter/material.dart';
import 'package:wiki_sleep/Global_Variables/global_colors.dart';

class BottomNavigationItem extends StatelessWidget {
  final Icons? icon;
  final String? text;
  Function? onChange;
  BottomNavigationItem({Key? key, this.onChange, this.icon, this.text})
      : super(key: key);
  item({int value = 0, String? title, IconData? icon}) {
    return GestureDetector(
      onTap: () {
        onChange!(value);
      },
      child: Column(
        children: [
          Icon(
            icon,
            color: greyColor,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              '$title',
              style: TextStyle(color: greyColor),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              item(value: 0, title: 'Home', icon: Icons.home_outlined),
              item(value: 1, title: 'Favorite', icon: Icons.favorite_outlined),
              item(value: 2, title: 'Search', icon: Icons.search_outlined),
              item(
                  value: 3,
                  title: 'Sleep Stuff',
                  icon: Icons.nightlight_outlined),
              item(value: 4, title: 'Setting', icon: Icons.settings_outlined),
            ],
          ),
        ),
      ),
    );
  }
}
