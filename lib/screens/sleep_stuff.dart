import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:wiki_sleep/Global_Variables/global_colors.dart';
import 'package:wiki_sleep/components/app_bar.dart';
import 'package:wiki_sleep/components/rounded_button.dart';
import 'package:wiki_sleep/components/sleep_stuff_bottom_sheet.dart';

class SleepStuffScreen extends StatefulWidget {
  const SleepStuffScreen({ Key? key }) : super(key: key);

  @override
  _SleepStuffScreenState createState() => _SleepStuffScreenState();
}

class _SleepStuffScreenState extends State<SleepStuffScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
 backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarScreen(
              screenName: 'Sleep Stuff',
            ),
          
          Padding(
            padding: const EdgeInsets.only(left:20,right: 20,top: 18),
            child: Container(
              alignment: Alignment.center,
              height: 200,
              decoration: BoxDecoration(
                 border: Border.all(color: blacklightColor)
               ),
               child:Center(
                 child: Padding(
                   padding: const EdgeInsets.all(5.0),
                   child: Text(
                     '         Wiki Sleep is \n Designed to help you \n     Relax and unwind',
                     style: TextStyle(fontSize: 23),
                   ),
                 ),
               )

            ),
          ),

           Padding(
            padding: const EdgeInsets.only(left:20,right: 20,top: 18),
            child: Container(
              alignment: Alignment.center,
              height: 80,
              decoration: BoxDecoration(
                 border: Border.all(color: blacklightColor)
               ),
               child:Center(
                 child: Padding(
                   padding: const EdgeInsets.all(5.0),
                   child: GestureDetector(
                     onTap: (){
                       SleepStuffBottomSheeted(context);
                     },
                     child: Text(
                       'What is Sleep Hypgiene',style: TextStyle(fontSize: 22),
                     ),
                   ),
                 ),
               )

            ),
          ),
        

         Padding(
            padding: const EdgeInsets.only(left:20,right: 20,top: 18),
            child: Container(
              alignment: Alignment.center,
              height: 80,
              decoration: BoxDecoration(
                 border: Border.all(color: blacklightColor)
               ),
               child:Center(
                 child: Padding(
                   padding: const EdgeInsets.all(5.0),
                   child: Text(
                     'thought Patters  & \n        Diversions',style: TextStyle(fontSize: 22),
                   ),
                 ),
               )

            ),
          ),
        



         Padding(
            padding: const EdgeInsets.only(left:20,right: 20,top: 18),
            child: Container(
              alignment: Alignment.center,
              height: 80,
              decoration: BoxDecoration(
                 border: Border.all(color: blacklightColor)
               ),
               child:Center(
                 child: Padding(
                   padding: const EdgeInsets.all(5.0),
                   child: Text(
                     'Sleep Deprivation & \n        Mental Healt',style: TextStyle(fontSize: 22),
                   ),
                 ),
               )

            ),
          ),
        Padding(
          padding: const EdgeInsets.only(left:40.0,right: 40),
          child: RoundedButton(context, 'Share Wiki Sleep', 16, () async {
      Share.share('check out my website https://example.com');
          }),
        )
       ],
            ),
      ),
     
      // bottomNavigationBar: BottomNavigationItem(),
      
      
    );
  }
}