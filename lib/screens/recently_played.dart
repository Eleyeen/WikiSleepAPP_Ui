import 'package:flutter/material.dart';
import 'package:wiki_sleep/Global_Variables/global_colors.dart';
import 'package:wiki_sleep/components/app_bar.dart';
import 'package:wiki_sleep/components/bottom_navigation_items.dart';
import 'package:wiki_sleep/components/history_card.dart';

class RecentlyPlayedScreen extends StatefulWidget {
  const RecentlyPlayedScreen({ Key? key }) : super(key: key);

  @override
  _RecentlyPlayedScreenState createState() => _RecentlyPlayedScreenState();
}

class _RecentlyPlayedScreenState extends State<RecentlyPlayedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
             AppBarScreen(screenName: 'Recently Played'),
            SizedBox(
              height: 5,
            ),
                  Container(
                height: MediaQuery.of(context).size.height / 1.4,
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
                      child: Text('Discover',
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

      bottomNavigationBar: BottomNavigationItem(),
    );
  }
}