import 'package:flutter/material.dart';
import 'package:wiki_sleep/Global_Variables/global_colors.dart';
import 'package:wiki_sleep/components/app_bar.dart';
import 'package:wiki_sleep/components/bottom_navigation_items.dart';
import 'package:wiki_sleep/components/history_card.dart';
import 'package:wiki_sleep/components/rounded_button.dart';

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
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return HistoryCard();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0,right: 20,left: 20,bottom: 10),
                child: RoundedButton(context, 'Discover', 18, (){}),
              ),
             
              
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationItem(),
    );
  }
}