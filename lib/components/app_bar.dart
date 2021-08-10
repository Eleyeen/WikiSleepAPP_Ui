import 'package:flutter/material.dart';

class AppBarScreen extends StatelessWidget {
  String? screenName;
  AppBarScreen({this.screenName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Container(
        color: Colors.white,
        height: 100,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icon(Icons.arrow_back),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top:10.0),
                    child: Container(
                       
    
                      child: Text(
                        'W',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,
                        color: Colors.blue
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:20.0 ,top: 20,bottom: 20),
                  child: Text(
                    screenName!,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:20.0 ,top: 20,bottom: 20),
                  child: Text(
                    'SeeAll',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
