import 'package:flutter/material.dart';
import 'package:wiki_sleep/Global_Variables/global_colors.dart';

class EpisodesPlayScreen extends StatefulWidget {
  const EpisodesPlayScreen({Key? key}) : super(key: key);

  @override
  _EpisodesPlayScreenState createState() => _EpisodesPlayScreenState();
}

class _EpisodesPlayScreenState extends State<EpisodesPlayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
       
        Positioned(
            child: Container(
          // width: MediaQuery.of(context).size.width/1,
          height: MediaQuery.of(context).size.height / 1,
          child: Image.asset(
            'images/backgroundimage.jpeg',
            fit: BoxFit.fill,
          ),
        )),

         Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:48.0,left: 30,right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.close,color: whiteColor,size: 30,),
                  Icon(Icons.favorite_border_outlined,color: whiteColor,size: 30,)
                ],
              ),

              
            ),
            Column(
              children: [

              ],
            )
          ],
        ),

      ],
    ));
  }
}
