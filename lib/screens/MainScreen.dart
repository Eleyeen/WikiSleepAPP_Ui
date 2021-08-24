import 'package:flutter/material.dart';
import 'package:wiki_sleep/components/bottom_navigation_items.dart';
import 'package:wiki_sleep/screens/favorite.dart';
import 'package:wiki_sleep/screens/main_home.dart';
import 'package:wiki_sleep/screens/search.dart';
import 'package:wiki_sleep/screens/setting.dart';
import 'package:wiki_sleep/screens/sleep_stuff.dart';
class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selected=0;
  List<Widget> screens=[MainHomeScreen(),FavoriteScreen(),SearchScreen(),SleepStuffScreen(),SettingScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:screens.elementAt(selected) ,
         bottomNavigationBar: BottomNavigationItem(onChange: (v){
           print(v);
           setState(() {
             selected=v;
           });
         },)
    );
  }
}