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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  playSound('note1.wav');
                },
                child: Container(
                  width: 100.0,
                  height: 40.0,
                  color: Colors.red,
                ),
              ),
              TextButton(
                onPressed: () {
                  playSound('note2.wav');
                },
                child: Container(
                  width: 100.0,
                  height: 40.0,
                  color: Colors.orange,
                ),
              ),
              TextButton(
                onPressed: () {
                  playSound('note3.wav');
                },
                child: Container(
                  width: 100.0,
                  height: 40.0,
                  color: Colors.yellow,
                ),
              ),
              TextButton(
                onPressed: () {
                  playSound('note4.wav');
                },
                child: Container(
                  width: 100.0,
                  height: 40.0,
                  color: Colors.green,
                ),
              ),
              TextButton(
                onPressed: () {
                  playSound('note5.wav');
                },
                child: Container(
                  width: 100.0,
                  height: 40.0,
                  color: Colors.blue,
                ),
              ),
              TextButton(
                onPressed: () {
                  playSound('note6.wav');
                },
                child: Container(
                  width: 100.0,
                  height: 40.0,
                  color: Colors.indigo,
                ),
              ),
              TextButton(
                onPressed: () {
                  playSound('note7.wav');
                },
                child: Container(
                  width: 100.0,
                  height: 40.0,
                  color: Colors.purple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
