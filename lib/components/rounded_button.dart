import 'package:flutter/material.dart';
import 'package:wiki_sleep/Global_Variables/global_colors.dart';

Widget RoundedButton(BuildContext context, String title, double fontSize, VoidCallback ontap) {
    return Container(
       child:  Container(
      child:  Padding(
                padding: const EdgeInsets.only(left:20,top: 20,right: 20,bottom: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width / 1,
                  height: 50,
                  child: ElevatedButton(
                      child: Text(
                        '$title',
                          style: TextStyle(fontSize: fontSize)),
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(whiteColor),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(blueColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      side: BorderSide(color: blueColor)))),
                      onPressed: () => ontap()),
                ),
              ),
    ));
  }