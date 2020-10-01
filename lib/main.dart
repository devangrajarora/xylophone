import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

//very cool ngl

class XylophoneApp extends StatelessWidget {
  void playSound(int no) {
    final player = AudioCache();
    player.play('note$no.wav');
  }

  Expanded buildKey({Color color, int no}) {
    return Expanded(
      child: FlatButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.white,
        child: Container(),
        color: color,
        onPressed: () => playSound(no),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, no: 1),
                buildKey(color: Colors.orange, no: 2),
                buildKey(color: Colors.yellow, no: 3),
                buildKey(color: Colors.green, no: 4),
                buildKey(color: Colors.teal, no: 5),
                buildKey(color: Colors.blue, no: 6),
                buildKey(color: Colors.purple, no: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
