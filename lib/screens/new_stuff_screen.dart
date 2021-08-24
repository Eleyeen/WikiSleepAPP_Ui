import 'package:flutter/material.dart';
import 'package:wiki_sleep/components/app_bar.dart';
import 'package:wiki_sleep/components/bottomSheet.dart';
import 'package:wiki_sleep/components/bottom_navigation_items.dart';
import 'package:wiki_sleep/components/card_new_stuff.dart';

class NewStuffScreen extends StatefulWidget {
  const NewStuffScreen({Key? key}) : super(key: key);

  @override
  _NewStuffScreenState createState() => _NewStuffScreenState();
}

class _NewStuffScreenState extends State<NewStuffScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     bottomNavigationBar: BottomNavigationItem(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarScreen(screenName: 'New Stuff'),
           
            Container(
              height: MediaQuery.of(context).size.height ,
              // width: 400,
              child: Padding(
                padding: const EdgeInsets.only(bottom:228.0),
                child: ListView.builder(
                  itemCount: 3,
                  // shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return CardNewStuff(
                      strBiography: 'BIOGRAPHY',
                      strName: 'LUcky LUciano Godfather of  th mafia',
                      strTime: '45 min',
                      strRead: 'read by Britt Buntain',
                      image: 'images/cardpic.png',
                      textColor: Colors.blue,
                      onpress: (){
                                      BottomSheeted(context);

                      },
                      
                      
                    );
                  },
                ),
              ),
            ),
        
        Container(
          height:50
        )  ],
        ),
      ),
    );
  }
}
