import 'package:flutter/material.dart';
import 'package:wiki_sleep/Global_Variables/global_colors.dart';

class ScreenNameList extends StatelessWidget {
  String? screenTittle;
  String? screenDec;
  Color? color;
  VoidCallback? onPress;
   ScreenNameList({ this.screenDec,this.screenTittle ,this.color , this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:23.0,bottom: 8),
            child: Text(
              screenTittle!,
              style: TextStyle(
                color: blacklightColor,
                fontSize: 18
                ),
            ),
          ),
    
          Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: Row(
              children: [
                Container(
                  height: 10,
                  width: 10,
                   decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle
              ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: Text(
                    screenDec!,style: TextStyle(fontSize: 12),
                  ),
                ),
                
              ],
            ),
          ),
    
          Padding(
            padding: const EdgeInsets.only(left:20.0,right: 20,top: 10,bottom: 25),
            child: Container(
              height: 0.5,
              color: greyColor,
            ),
          )
    
        ],
        ),
      ),
    );
  }
}