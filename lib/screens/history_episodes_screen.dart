import 'package:flutter/material.dart';
import 'package:wiki_sleep/components/card_new_stuff.dart';

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
      body: Column(
        children: [
          AppBarScreen(screenName: 'New Stuff'),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 530,
            width: 400,
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return CardNewStuff(
                  strBiography: 'BIOGRAPHY',
                  strName: 'LUcky LUciano Godfather of  th mafia',
                  strTime: '45 min',
                  strRead: 'read by Britt Buntain',
                  image: 'images/cardpic.png',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}