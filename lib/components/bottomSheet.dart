import 'package:flutter/material.dart';
import 'package:wiki_sleep/Global_Variables/global_colors.dart';
import 'package:wiki_sleep/components/button.dart';

  Future<dynamic> BottomSheeted(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height / 1.2,
            color: Color(0xFF737373),
            child: Stack(
              children: [
                Container(
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(40.0),
                      topRight: const Radius.circular(40.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 270,
                        width: MediaQuery.of(context).size.width / 1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                          child: Image.asset(
                            'images/cardpic.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 40.0, right: 30, top: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.favorite_outlined,
                                  color: greyColor,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    'Add to Favourites',
                                    style: TextStyle(color: greyColor),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.send_outlined,
                                  color: greyColor,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    'Share Episode',
                                    style: TextStyle(color: greyColor),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.send_outlined,
                                  color: greyColor,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    'Share Episode',
                                    style: TextStyle(color: greyColor),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 40.0, right: 40, top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Read by Britt Buntain',
                              style: TextStyle(fontSize: 14, color: greyColor),
                            ),
                            Text(
                              '45 min',
                              style: TextStyle(fontSize: 14, color: greyColor),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 40.0, right: 40, top: 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1,
                          child: Text(
                            'Lucky Luciano is considered the father of modern organized crime in the United States and was the first official boss of the Genovese crime family. From humble beginnings as an Italian immigrant, Luciano rose to ultimate power through a combination of ruthlessness, calculated risk and an inescapable genius for profiting from crime. #WikiSleep #SleepStories #LuckyLuciano #Mafia #Sleep',
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                    top: 40,
                    left: 50,
                    width: 250,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'BIOGRAPHY',
                          style: TextStyle(color: blueColor, fontSize: 18),
                        ),
                        Text(
                          'Lucky Luciano, Godfather of the Mafia',
                          style: TextStyle(color: whiteColor, fontSize: 27),
                        )
                      ],
                    )),
                Positioned(
                  top: 230,
                  left: 40,
                  right: 40,
                  child: Button(
                    name: 'Listen to this Episode',
                  ),
                )
              ],
            ),
          );
        });
  }


BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    color: Colors.black,
    border: Border.all(width: 3.0),
    borderRadius: BorderRadius.all(
        Radius.circular(25.0) //                 <--- border radius here
        ),
  );
}
