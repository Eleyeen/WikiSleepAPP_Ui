import 'package:flutter/material.dart';

class BottomNavigationItem extends StatelessWidget {
  final Icons? icon;
  final String? text;
  const BottomNavigationItem({ Key? key, this.icon, this.text }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       
        Text(
          text!,

        ),


      ],
    );
  }
}