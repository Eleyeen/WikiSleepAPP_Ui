import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
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
              padding: const EdgeInsets.only(top: 48.0, left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: whiteColor,
                      size: 30,
                    ),
                  ),
                  Icon(
                    Icons.favorite_border_outlined,
                    color: whiteColor,
                    size: 30,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                  ),
                  Text(
                    'BIOGRPHY',
                    style: TextStyle(fontSize: 12, color: blueColor),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Text(
                      'Lucky Luciano,\nGodfather of \nthe  mafia',
                      style: TextStyle(fontSize: 25, color: whiteColor),
                    ),
                  ),
                  Text(
                    'read By Britt Buntain',
                    style: TextStyle(fontSize: 12, color: whiteColor),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(''),
                      Padding(
                        padding: const EdgeInsets.only(right: 30, top: 30),
                        child: Icon(
                          Icons.volume_up_outlined,
                          color: whiteColor,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 0,
                      right: 30,
                      top: 10,
                    ),
                    child: ProgressBar(
                      progressBarColor: whiteColor,
                      progress: Duration(milliseconds: 1000),
                      buffered: Duration(milliseconds: 2000),
                      bufferedBarColor: Colors.white54,
                      thumbColor: whiteColor,
                      baseBarColor: Colors.white54,
                      barHeight: 4,
                      total: Duration(milliseconds: 5000),
                      onSeek: (duration) {
                        print('User selected a new time: $duration');
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.timer_outlined,
                        color: whiteColor,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                          decoration: BoxDecoration(
                              color: blueColor, shape: BoxShape.circle),
                          child: Icon(Icons.play_arrow,color: whiteColor,)),
                      Icon(
                        Icons.restart_alt_outlined,
                        color: whiteColor,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ],
    ));
  }
}
