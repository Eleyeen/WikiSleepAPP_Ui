import 'package:flutter/material.dart';
import 'package:wiki_sleep/components/app_bar.dart';
import 'package:wiki_sleep/components/bottom_navigation_items.dart';
import 'package:wiki_sleep/components/button.dart';
import 'package:wiki_sleep/components/card_new_stuff.dart';
import 'package:wiki_sleep/components/history_card.dart';

class HistoryEpisodesScreen extends StatefulWidget {
  const HistoryEpisodesScreen({ Key? key }) : super(key: key);

  @override
  _HistoryEpisodesScreenState createState() => _HistoryEpisodesScreenState();
}

class _HistoryEpisodesScreenState extends State<HistoryEpisodesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
     bottomNavigationBar: BottomNavigationItem(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarScreen(screenName: 'History Episodes'),
           
            Container(
              height: MediaQuery.of(context).size.height/2,
              width: 400,
              child: ListView.builder(
                itemCount: 1,
                physics: const NeverScrollableScrollPhysics(),

                itemBuilder: (context, index) {
                  return CardNewStuff(
                    strBiography: 'New Episodes',
                    strName: 'LUcky LUciano Godfather of  th mafia',
                    strTime: '45 min',
                    strRead: 'read by Britt Buntain',
                    image: 'images/cardpic.png',
                    color: Colors.green,
                  );
                },
              ),
            ),
      
            Container(
              height: MediaQuery.of(context).size.height/2,
              width: 400,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return HistoryCard();
                },
              ),
            ),
        
          Button()
          ],
        ),
      ),
    );
  }
}