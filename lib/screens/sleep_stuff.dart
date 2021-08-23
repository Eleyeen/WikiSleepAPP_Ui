import 'package:flutter/material.dart';
import 'package:wiki_sleep/Global_Variables/global_colors.dart';
import 'package:wiki_sleep/components/app_bar.dart';
import 'package:wiki_sleep/components/bottom_navigation_items.dart';

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
              height: 220,
              decoration: BoxDecoration(
                 border: Border.all(color: blacklightColor)
               ),
               child:Center(
                 child: Padding(
                   padding: const EdgeInsets.all(5.0),
                   child: Text(
                     '         Wiki Sleep is \n Designed to help you \n     Relax and unwind',style: TextStyle(fontSize: 28),
                   ),
                 ),
               )

            ),
          ),

           Padding(
            padding: const EdgeInsets.only(left:20,right: 20,top: 18),
            child: Container(
              alignment: Alignment.center,
              height: 100,
              decoration: BoxDecoration(
                 border: Border.all(color: blacklightColor)
               ),
               child:Center(
                 child: Padding(
                   padding: const EdgeInsets.all(5.0),
                   child: Text(
                     'What is Sleep Hypgiene',style: TextStyle(fontSize: 28),
                   ),
                 ),
               )

            ),
          ),
        

         Padding(
            padding: const EdgeInsets.only(left:20,right: 20,top: 18),
            child: Container(
              alignment: Alignment.center,
              height: 100,
              decoration: BoxDecoration(
                 border: Border.all(color: blacklightColor)
               ),
               child:Center(
                 child: Padding(
                   padding: const EdgeInsets.all(5.0),
                   child: Text(
                     'thought Patters  & \n     Diversions',style: TextStyle(fontSize: 28),
                   ),
                 ),
               )

            ),
          ),
        



         Padding(
            padding: const EdgeInsets.only(left:20,right: 20,top: 18),
            child: Container(
              alignment: Alignment.center,
              height: 100,
              decoration: BoxDecoration(
                 border: Border.all(color: blacklightColor)
               ),
               child:Center(
                 child: Padding(
                   padding: const EdgeInsets.all(5.0),
                   child: Text(
                     'Sleep Deprivation & \n      Mental Healt',style: TextStyle(fontSize: 28),
                   ),
                 ),
               )

            ),
          ),
        
             Padding(
                padding: const EdgeInsets.only(left:18,top: 18,right: 18,bottom: 38),
                child: Container(
                  width: MediaQuery.of(context).size.width / 1,
                  height: 50,
                  child: ElevatedButton(
                      child: Text('Share Wiki Sleep',
                          style: TextStyle(fontSize: 18)),
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
                      onPressed: () => null),
                ),
              )
              ],
            ),
      ),
     
      bottomNavigationBar: BottomNavigationItem(),
      
      
    );
  }
}