import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardCategories extends StatelessWidget {
  // const CardCategories({  }) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:8.0,right: 8,bottom: 20,top: 8),
      child: Container(
        height: 250,
        width: 160,
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(

                height: 140,
                width: 160,
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
              Padding(
                padding: const EdgeInsets.only(left:12.0,top: 5),
                child: Text(
                  'Anthony bourdain',
                  style: GoogleFonts.barlow(
                    fontSize: 14
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:12.0,top: 5,bottom: 20),
                child: Text(
                  'read by britt Burtain',
                  style: TextStyle(
                    fontSize: 12
                  ),
                ),
              ),
            ],
            
          ),
        ),
      ),
    );
  }
}