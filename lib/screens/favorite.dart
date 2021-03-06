import 'package:flutter/material.dart';
import 'package:wiki_sleep/Global_Variables/global_colors.dart';
import 'package:wiki_sleep/components/app_bar.dart';
import 'package:wiki_sleep/components/history_card.dart';
import 'package:wiki_sleep/components/rounded_button.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarScreen(screenName: 'Favourites'),
            SizedBox(
              height: 5,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.4,
              width: 400,
              child: ListView.builder(
                shrinkWrap: false,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return HistoryCard();
                },
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 40),
                child: RoundedButton(context, "Short By", 16.0, () {
                  print('click');
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext bc) {
                        return Container(
                          height: 260,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 38, right: 38, top: 50),
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 1,
                                  height: 50,
                                  child: ElevatedButton(
                                      child: Text('Newest',
                                          style: TextStyle(fontSize: 18)),
                                      style: ButtonStyle(
                                          foregroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  whiteColor),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  blueColor),
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  side: BorderSide(
                                                      color: blueColor)))),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  FavoriteScreen()),
                                        );
                                      }),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 38, right: 38, top: 40, bottom: 30),
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 1,
                                  height: 50,
                                  child: ElevatedButton(
                                      child: Text('Popularity',
                                          style: TextStyle(fontSize: 18)),
                                      style: ButtonStyle(
                                          foregroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  whiteColor),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  blueColor),
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  side: BorderSide(
                                                      color: blueColor)))),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  FavoriteScreen()),
                                        );
                                      }),
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                }))
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationItem(),
    );
  }
}
