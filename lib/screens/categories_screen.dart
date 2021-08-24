import 'package:flutter/material.dart';
import 'package:wiki_sleep/Global_Variables/global_colors.dart';
import 'package:wiki_sleep/components/app_bar.dart';
import 'package:wiki_sleep/components/bottom_navigation_items.dart';
import 'package:wiki_sleep/components/cad_categories.dart';
import 'package:wiki_sleep/components/rounded_button.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      bottomNavigationBar: BottomNavigationItem(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarScreen(screenName: 'Categories'),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 5, right: 5),
              child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: greyColor),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, top: 10, right: 20, bottom: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'BIOGRAPHY',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.blue),
                            ),
                            Text(
                              'See All',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 250,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return CardCategories();
                          },
                        ),
                      )
                    ],
                  )),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 5, right: 5),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: greyColor),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, top: 10, right: 20, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'History',
                            style: TextStyle(fontSize: 14, color: Colors.blue),
                          ),
                          Text(
                            'See All',
                            style: TextStyle(fontSize: 14, color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 250,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return CardCategories();
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
       
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 5, right: 5),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: greyColor),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, top: 10, right: 20, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Stories & Myths',
                            style: TextStyle(fontSize: 14, color: Colors.blue),
                          ),
                          Text(
                            'See All',
                            style: TextStyle(fontSize: 14, color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 250,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return CardCategories();
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
       
        Padding(
              padding: const EdgeInsets.only(left:40.0,right: 40),
              child: RoundedButton(context, "View newest", 16, (){})
            )
          ],
        ),
      ),
    );
  }
}
