import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiki_sleep/Global_Variables/global_colors.dart';

class CardNewStuff extends StatelessWidget {
  String? image;
  String? strBiography;
  String? strName;
  String? strRead;
  String? strTime;
  Color? color;
  Color? textColor;
  VoidCallback onpress;

  CardNewStuff(
      {
        this.image,
      this.strBiography,
      this.strName,
      this.strRead,
      this.strTime,
      this.color ,
      required this.onpress,
      this.textColor});

  @override
  Widget build( BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: 400,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.asset(
                    image!,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Row(children: [
                  Container(
                    height: 10,
                    width: 10,
                    decoration:
                        BoxDecoration(color: color, shape: BoxShape.circle),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      strBiography!,
                      style: TextStyle(fontSize: 14, color: textColor),
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 38),
                child: Text(
                  strName!,
                  style: GoogleFonts.barlow(
                    fontSize: 22, color: blackColor,fontStyle: FontStyle.italic
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      strRead!,
                      style: TextStyle(fontSize: 14, color: greyColor),
                    ),
                    Text(
                      strTime!,
                      style: TextStyle(fontSize: 14, color: greyColor),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
