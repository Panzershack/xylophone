import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    XylophoneApp(),
  );
}

class XylophoneApp extends StatelessWidget {
  Future<void> playSound(String sound) async {
    //alternatively you can pass in a int variable with the sound number and use string interpolation
    final player = AudioPlayer();
    await player.play(AssetSource(sound));
  }

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.black87,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: TextButton(
                    style: flatButtonStyle,
                    onPressed: () {
                      playSound('note1.wav');
                    },
                    child: Container(
                      margin: EdgeInsets.zero,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: TextButton(
                    style: flatButtonStyle,
                    onPressed: () {
                      playSound('note2.wav');
                    },
                    child: Container(
                      color: Colors.orange,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: TextButton(
                    style: flatButtonStyle,
                    onPressed: () {
                      playSound('note3.wav');
                    },
                    child: Container(
                      color: Colors.yellow,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: TextButton(
                    style: flatButtonStyle,
                    onPressed: () {
                      playSound('note4.wav');
                    },
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: TextButton(
                    style: flatButtonStyle,
                    onPressed: () {
                      playSound('note5.wav');
                    },
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: TextButton(
                    style: flatButtonStyle,
                    onPressed: () {
                      playSound('note6.wav');
                    },
                    child: Container(
                      color: Colors.indigo,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: TextButton(
                    style: flatButtonStyle,
                    onPressed: () {
                      playSound('note7.wav');
                    },
                    child: Container(
                      color: Colors.purple,
                    ),
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
