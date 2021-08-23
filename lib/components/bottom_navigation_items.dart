import 'package:flutter/material.dart';
import 'package:wiki_sleep/Global_Variables/global_colors.dart';
import 'package:wiki_sleep/screens/favorite.dart';
import 'package:wiki_sleep/screens/main_home.dart';
import 'package:wiki_sleep/screens/search.dart';
import 'package:wiki_sleep/screens/setting.dart';
import 'package:wiki_sleep/screens/sleep_stuff.dart';

class BottomNavigationItem extends StatelessWidget {
  final Icons? icon;
  final String? text;
  const BottomNavigationItem({Key? key, this.icon, this.text})
      : super(key: key);

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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainHomeScreen()),
                  );
                  print('home');
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.home_outlined,
                      color: greyColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Home',
                        style: TextStyle(color: greyColor),
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("fav");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FavoriteScreen()),
                  );
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.favorite_outlined,
                      color: greyColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Favorite',
                        style: TextStyle(color: greyColor),
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchScreen()),
                  );
                  print('search');
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.search_outlined,
                      color: blackColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Search',
                        style: TextStyle(color: blackColor),
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SleepStuffScreen()),
                  );
                  print('sleep');
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.nightlight_outlined,
                      color: greyColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Sleep Stuff',
                        style: TextStyle(color: greyColor),
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingScreen()),
                  );
                  print('setting');
                
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.settings_outlined,
                      color: greyColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Setting',
                        style: TextStyle(color: greyColor),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
