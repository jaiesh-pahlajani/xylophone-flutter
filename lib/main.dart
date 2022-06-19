import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final player = AudioCache();

    Expanded buildKey({MaterialColor color, int soundID}) {
      return Expanded(
        child: FlatButton(
          color: color,
          onPressed: (() {
            player.play('note$soundID.wav');
          }),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(color: Colors.red, soundID: 1),
                buildKey(color: Colors.orange, soundID: 2),
                buildKey(color: Colors.yellow, soundID: 3),
                buildKey(color: Colors.lightGreen, soundID: 4),
                buildKey(color: Colors.green, soundID: 5),
                buildKey(color: Colors.blue, soundID: 6),
                buildKey(color: Colors.purple, soundID: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
