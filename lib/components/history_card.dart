import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiki_sleep/Global_Variables/global_colors.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10, top: 8),
      child: Container(
        decoration: BoxDecoration(
            color: whiteColor, border: Border.all(color: blacklightColor)),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    // topLeft: Radius.circular(15),
                    // bottomLeft: Radius.circular(15)
                    ),
                child: Image.asset(
                  'images/cardpic.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 20),
                  child: Text('Sam  Cooke',
                      style: GoogleFonts.barlow(
                          fontSize: 18, fontWeight: FontWeight.w400)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'strRead!',
                        style: TextStyle(fontSize: 14, color: greyColor),
                      ),
                      Container(
                        width: 90,
                      ),
                      Text(
                        'strTime!',
                        style: TextStyle(fontSize: 14, color: greyColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0, bottom: 50),
              child: Icon(
                Icons.favorite_border_outlined,
                color: greyColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
