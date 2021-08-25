import 'package:flutter/material.dart';
import 'package:wiki_sleep/components/app_bar.dart';
import 'package:wiki_sleep/components/rounded_button.dart';
import 'package:wiki_sleep/components/screen_name.dart';
import 'package:wiki_sleep/screens/categories_screen.dart';
import 'package:wiki_sleep/screens/discover_scree.dart';
import 'package:wiki_sleep/screens/favorite.dart';
import 'package:wiki_sleep/screens/history_episodes_screen.dart';
import 'package:wiki_sleep/screens/new_stuff_screen.dart';
import 'package:wiki_sleep/screens/recently_played.dart';

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
      body: SingleChildScrollView(
        child: Column(
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
                      builder: (context) => DiscoverScreen()),
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
              onPress: (){
                                     Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FavoriteScreen()),
                );
              },
            ),
            GestureDetector(
             
              child: ScreenNameList(
                screenTittle: 'Recently Played',
                screenDec: '',
                color: Colors.white,
                onPress: (){
                                         Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RecentlyPlayedScreen()),
                );
                },
                
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(left:40.0,right: 40),
              child: RoundedButton(context, "Listen Offline", 16, (){})
            )
              ],
            ),
      ),
     
    );
  }

}