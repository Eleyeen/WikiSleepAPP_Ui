import 'package:flutter/material.dart';
import 'package:wiki_sleep/components/app_bar.dart';
import 'package:wiki_sleep/components/screen_name.dart';
import 'package:wiki_sleep/screens/categories_screen.dart';
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('Messages'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile'))
        ],
      ),
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
              print('jsdkajdhasjdhkasdakjshdaksjdha');
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
          
          ),
          ScreenNameList(
            screenTittle: 'Categories',
            screenDec: '',
            color: Colors.white,
             onPress: () {
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
          ),
        ],
      ),
    );
  }
}
