import 'package:flutter/material.dart';
import 'package:wiki_sleep/Global_Variables/global_colors.dart';
import 'package:wiki_sleep/components/cad_categories.dart';
import 'package:wiki_sleep/components/screen_name.dart';
import 'package:wiki_sleep/screens/main_home.dart';
import 'package:wiki_sleep/screens/manage_subscription.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
        
          children: [
            
            Container(
              height: 120,
              color: whiteColor,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 28.0,
                    ),
                    child: GestureDetector(
                      onTap: (){
                         Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainHomeScreen()),
                );
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25.0,
                    ),
                    child: Text(
                      'Setting',
                      style: TextStyle(fontSize: 23),
                    ),
                  )
                ],
              ),
            ),
            Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, top: 10, right: 20, bottom: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'History',
                            style: TextStyle(fontSize: 22, color: blackColor),
                          ),
                          Text(
                            'See All',
                            style: TextStyle(fontSize: 14, color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Text(
                        'last 10 Plays',
                        style: TextStyle(fontSize: 13),
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

                 Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 0.5,
                  color: Colors.grey,
                ),
              ),
              
            ScreenNameList(
              screenTittle: 'Sleep Tips',
              screenDec: 'how to wikiSleep',
              color: Colors.white,
              onPress: () {},
            ),
            ScreenNameList(
              screenTittle: 'Contact',
              screenDec: '',
              color: Colors.white,
              onPress: () {
                print('Contact');
              },
            ),
               ScreenNameList(
                           screenTittle: 'Manage Subscription',
                           screenDec: 'update payment / cancel',
                           color: Colors.white,
                           onPress: () {
                                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ManageSubscriptionScreen()),
                );
                print("Setting");

                           },
                         ),
          ],
        ),
      ),
    );
  }
}
