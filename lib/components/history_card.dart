import 'package:flutter/material.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            width: 100,
             child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                
                                bottomLeft: Radius.circular(15)),
            child: Image.asset(
              'images/cate.png',
              fit: BoxFit.fill,
              
            ),
          ),),
        ),
      ],

    );
  }
}