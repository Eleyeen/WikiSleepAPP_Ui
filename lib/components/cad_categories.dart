import 'package:flutter/material.dart';

class CardCategories extends StatelessWidget {
  // const CardCategories({  }) ;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 150,
            width: 140,
             child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                
                                bottomRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15)),
            child: Image.asset(
              'images/cate.png',
              fit: BoxFit.fill,
            ),
          ),),
        ),
        Padding(
          padding: const EdgeInsets.only(left:12.0),
          child: Text(
            'Anthony bourdain',
            style: TextStyle(
              fontSize: 15
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:12.0),
          child: Text(
            'read by britt Burtain',
            style: TextStyle(
              fontSize: 12
            ),
          ),
        ),
      ],
      
    );
  }
}