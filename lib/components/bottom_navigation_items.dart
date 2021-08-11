import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiki_sleep/Global_Variables/global_colors.dart';

class BottomNavigationItem extends StatelessWidget {
  final Icons? icon;
  final String? text;
  const BottomNavigationItem({ Key? key, this.icon, this.text }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: BottomAppBar(
        
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.home_outlined,color: greyColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Text(
                      'Home'
                      ,style: TextStyle(color: greyColor ),
                    ),
                  )
                ],
              ),


               Column(
                children: [
                  Icon(
                    Icons.favorite_outlined,color: greyColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Text(
                      'Favorite'
                      ,style: TextStyle(color: greyColor ),
                    ),
                  )
                ],
              ),
           

            Column(
                children: [
                  Icon(
                    Icons.search_outlined,color: blackColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Text(
                      'Search'
                      ,style: TextStyle(color: blackColor ),
                    ),
                  )
                ],
              ),

               Column(
                children: [
                  Icon(
                    Icons.nightlight_outlined,color: greyColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Text(
                      'Sleep Stuff'
                      ,style: TextStyle(color: greyColor ),
                    ),
                  )
                ],
              ),

               Column(
                children: [
                  Icon(
                    Icons.settings_outlined,color: greyColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Text(
                      'Setting'
                      ,style: TextStyle(color: greyColor ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ) ,),
    );
   
   
    
  }
 
}