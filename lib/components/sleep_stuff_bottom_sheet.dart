import 'package:flutter/material.dart';
import 'package:wiki_sleep/Global_Variables/global_colors.dart';
import 'package:wiki_sleep/components/rounded_button.dart';
import 'package:wiki_sleep/screens/sleep_stuff.dart';


Future<dynamic> SleepStuffBottomSheeted(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height / 1.5,
            color: Color(0xFF737373),
            child: Container(
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(40.0),
                  topRight: const Radius.circular(40.0),
                ),
              ),
                 child: Padding(
                   padding: const EdgeInsets.only(left:20.0,right: 20,top
                   :40),
                   child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Icon(Icons.arrow_back_ios),
                          Icon(Icons.share),

                        ],),
                        Text(
                          'Sleep Stuff',
                          style: TextStyle(
                            fontSize: 24
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:20,bottom:20,left: 10),
                          child: Text(
                            'The natural, easily reversible periodic state of many living things that is marked by the absence of wakefulness and by the loss of consciousness of ones surroundings, is accompanied by a typical body posture (such as lying down with the eyes closed), the occurrence of dreaming, and changes in brain activity and the natural, easily reversible periodic state of many living things that is marked by the absence of wakefulness and by the loss of consciousness of ones surroundings, is accompanied by a typical body posture (such as lying down with the eyes closed), the occurrence of dreaming, and changes in brain activity  ',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Text(
                          'Next Sleep Stuff Post'
                          ,style: TextStyle(
                            fontSize: 18,color: blueColor
                          ),
                        )
                        ,
                         Padding(
                           padding: const EdgeInsets.only(left:30,right: 30,top: 10),
                           child: RoundedButton(context, 'Discover', 18, (){ 
                 Navigator.pop(context);
                }),
                         ),
             
              

                      ],
                    ),
                 ),
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