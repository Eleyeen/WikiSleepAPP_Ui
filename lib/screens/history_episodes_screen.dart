import 'package:flutter/material.dart';
import 'package:wiki_sleep/Global_Variables/global_colors.dart';
import 'package:wiki_sleep/components/app_bar.dart';
import 'package:wiki_sleep/components/bottom_navigation_items.dart';
import 'package:wiki_sleep/components/button.dart';
import 'package:wiki_sleep/components/card_new_stuff.dart';
import 'package:wiki_sleep/components/history_card.dart';

class HistoryEpisodesScreen extends StatefulWidget {
  const HistoryEpisodesScreen({Key? key}) : super(key: key);

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
              height: 379 ,
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
                    onpress: (){},
                  );
                },
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height/1.4,
              width: 400,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return HistoryCard();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                width: MediaQuery.of(context).size.width / 1,
                height: 50,
                child: ElevatedButton(
                    child: Text('Descover'.toUpperCase(),
                        style: TextStyle(fontSize: 18)),
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(whiteColor),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(blueColor),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    side: BorderSide(color: blueColor)))),
                    onPressed: () => null),
              ),
            )
          ],
        ),
      ),
    );
  }
}
