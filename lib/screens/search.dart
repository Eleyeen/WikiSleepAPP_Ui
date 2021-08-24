import 'package:flutter/material.dart';
import 'package:wiki_sleep/Global_Variables/global_colors.dart';
import 'package:wiki_sleep/components/history_card.dart';
import 'package:wiki_sleep/screens/main_home.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainHomeScreen()),
                    );
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
                    padding: const EdgeInsets.only(top:18.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: blacklightColor)),
                      height: 40,
                      width: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Padding(
                           padding: const EdgeInsets.only(left:18.0),
                           child: Text(
                             'Search....'
                           ),
                         ),
                          Padding(
                            padding: const EdgeInsets.only(right:18.0),
                            child: Icon(Icons.search),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
      
            Container(
              child: Column(
                children: [
                  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:20.0 ,top: 20,bottom: 10),
                    child: Text(
                      'Episodes',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:20.0 ,top: 20,bottom: 10),
                    child: Text(
                      'SeeAll',
                      style: TextStyle(
                        fontSize: 16,
                        color: blueColor
                      ),
                    ),
                  ),
                ],
              ),
            
                   Container(
                height: MediaQuery.of(context).size.height / 1.4,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return HistoryCard();
                  },
                ),
              ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
