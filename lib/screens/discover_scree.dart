import 'package:flutter/material.dart';
import 'package:wiki_sleep/Global_Variables/global_colors.dart';
import 'package:wiki_sleep/components/bottomSheet.dart';
import 'package:wiki_sleep/components/card_new_stuff.dart';
import 'package:wiki_sleep/components/history_card.dart';

class DiscoverScreen extends StatefulWidget {
  DiscoverScreen({Key? key}) : super(key: key);

  @override
  _DiscoverScreenState createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 6), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30.0, top: 30),
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 115.0, top: 40),
                        child: Text(
                          'W',
                          style: TextStyle(fontSize: 35, color: blueColor),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 18, left: 40, right: 40, bottom: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: blacklightColor)),
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text('Search....'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 18.0),
                            child: Icon(Icons.search),
                          )
                        ],
                      ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left:18.0,bottom: 10),
                  child: Text(
                    'Discover',
                    style: TextStyle(fontSize: 24,),
                  ),
                )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                color: whiteColor,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, top: 20, bottom: 10),
                          child: Text(
                            'Rexently Played',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 20.0, top: 20, bottom: 10),
                          child: Text(
                            'SeeAll',
                            style: TextStyle(fontSize: 16, color: blueColor),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 1.4,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return HistoryCard();
                        },
                      ),
                    ),

                      Container(
              height: MediaQuery.of(context).size.height ,
              // width: 400,
              child: Padding(
                padding: const EdgeInsets.only(bottom:228.0),
                child: ListView.builder(
                  itemCount: 3,
                  physics: NeverScrollableScrollPhysics(),
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
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}