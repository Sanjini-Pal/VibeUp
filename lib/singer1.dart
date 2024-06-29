import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:fluttertoast/fluttertoast.dart';

class singer1 extends StatelessWidget {
  final player = AudioPlayer();
  void _play(int i) async {
    await player.play(AssetSource(getAudioForIndex(i)));
  }
  String getAudioForIndex(int index) {
    switch (index % 3) { // Adjust the modulus based on your number of audio files
      case 0:
        return 'audio1.mp3';
      case 1:
        return 'sample.mp3';
      case 2:
        return 'audio1.mp3';
      default:
        return 'sample.mp3'; // Default to the first audio file
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double right = screenWidth < 1024 ? 0.0 : 25.0;
    double alignTitle = screenWidth < 1024 ? -0.90 : -0.96;
    List<Widget> containers = [];

    for (int i = 0; i < 10; i++) {
      containers.add(
        Container(
          margin: EdgeInsets.all(8.0),
          height: 80,
          color: Colors.grey[900],
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Text(
                    'Audio ${i + 1}',
                    style: TextStyle(fontSize: 23, color: Colors.white),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        _play(i);
                      },
                      icon: Icon(Icons.play_arrow_rounded, color: Colors.white),
                      tooltip: 'Play',
                    ),
                    IconButton(
                      onPressed: () {
                        player.pause();
                      },
                      icon: Icon(Icons.pause_circle_filled_rounded, color: Colors.white),
                      tooltip: 'Pause',
                    ),
                    IconButton(
                      onPressed: () {
                        player.stop();
                      },
                      icon: Icon(Icons.stop_circle_rounded, color: Colors.white),
                      tooltip: 'Pause',
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: right),
                      child: IconButton(onPressed: (){
                        Fluttertoast.showToast(
                          msg:'Liked',
                          textColor: Colors.white, // Text color of the toast message
                          fontSize: 15.0, // Font size of the toast message
                        );
                      },
                        icon: Icon(Icons.star_border_rounded,color: Colors.white,),
                        tooltip: 'Like',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment(0.0, alignTitle),
            child: Text(
              'VibeUp with Arijit Singh',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
          Align(
            alignment: Alignment(0, -0.75),
            child: Container(
              height: 150.0,
              width: 150.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/img1.webp'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250.0, bottom: 20.0),
            child: ListView(
              children: containers,
            ),
          ),
        ],
      ),
    );
  }
}
