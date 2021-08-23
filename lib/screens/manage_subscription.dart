import 'package:flutter/material.dart';
import 'package:wiki_sleep/Global_Variables/global_colors.dart';
import 'package:wiki_sleep/components/screen_name.dart';
import 'package:wiki_sleep/screens/setting.dart';

class ManageSubscriptionScreen extends StatelessWidget {
  const ManageSubscriptionScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(

        children: [
          Container(
            height: 120,
            color: whiteColor,
            child:Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:28.0,),
                  child: GestureDetector(
                    onTap: (){
                                           Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingScreen()),
                );
                    },
                    child: Icon(Icons.arrow_back_ios,size: 30,)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:25.0,),
                  child: Text('Manage subscription',style: TextStyle(fontSize: 23),),
                )
            ],
            ),
          ),
   
             ScreenNameList(
              screenTittle: 'Update Payment',
              screenDec: '',
              color: Colors.white,
              onPress: () {
                print('pay');
              },
            ),

               ScreenNameList(
              screenTittle: 'Cancel Payment',
              screenDec: '',
              color: Colors.white,
              onPress: () {
                print('cancel');
              },
            ),
        ],
      ),
      
    );
  }
}