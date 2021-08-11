import 'package:flutter/material.dart';
import 'package:wiki_sleep/Global_Variables/global_colors.dart';

class Button extends StatelessWidget {
  Button({ this.name }) ;
  String? name;
  @override
  Widget build(BuildContext context) {
    return  Padding(
           padding: const EdgeInsets.all(18.0),
           child: Container(
             width: MediaQuery.of(context).size.width/1,
             height: 50,
             child: ElevatedButton(
               
      child: Text(
        name!.toUpperCase(),
        style: TextStyle(fontSize: 18)
      ),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(whiteColor),
        backgroundColor: MaterialStateProperty.all<Color>(blueColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: BorderSide(color: blueColor)
              )
        )
      ),
      onPressed: () => null
    ),
           ),
         );
  }
}