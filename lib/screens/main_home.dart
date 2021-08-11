import 'package:flutter/material.dart';
import 'package:wiki_sleep/Global_Variables/global_colors.dart';
import 'package:wiki_sleep/components/app_bar.dart';
import 'package:wiki_sleep/components/bottomSheet.dart';
import 'package:wiki_sleep/components/bottom_navigation_items.dart';
import 'package:wiki_sleep/components/button.dart';
import 'package:wiki_sleep/components/screen_name.dart';
import 'package:wiki_sleep/screens/categories_screen.dart';
import 'package:wiki_sleep/screens/history_episodes_screen.dart';
import 'package:wiki_sleep/screens/new_stuff_screen.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({Key? key}) : super(key: key);

  @override
  _MainHomeScreenState createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          AppBarScreen(
            screenName: '',
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 0.5,
              color: Colors.grey,
            ),
          ),
          ScreenNameList(
            screenTittle: 'NewStuff',
            screenDec: 'BIORAPHY / MILES DAVIS',
            color: Colors.green,
            onPress: () {
              print('new Stuff');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewStuffScreen()),
              );
            },
          ),
          ScreenNameList(
            screenTittle: 'Discover',
            screenDec: '',
            color: Colors.white,
            onPress: () {
              print('history');
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HistoryEpisodesScreen()),
              );
            },
          ),
          ScreenNameList(
            screenTittle: 'Categories',
            screenDec: '',
            color: Colors.white,
            onPress: () {
              print('categories');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CategoriesScreen()),
              );
            },
          ),
          ScreenNameList(
            screenTittle: 'your Favourites',
            screenDec: '',
            color: Colors.white,
          ),
          ScreenNameList(
            screenTittle: 'Recently Played',
            screenDec: '',
            color: Colors.white,
            onPress: () {
              print("Played");
              BottomSheeted(context);
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationItem(),
    );
  }

}