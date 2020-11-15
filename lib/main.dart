import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKeyWidget(color: Colors.red, soundNum: 1),
              buildKeyWidget(color: Colors.orange, soundNum: 2),
              buildKeyWidget(color: Colors.yellow, soundNum: 3),
              buildKeyWidget(color: Colors.green, soundNum: 4),
              buildKeyWidget(color: Colors.blue, soundNum: 5),
              buildKeyWidget(color: Colors.indigo, soundNum: 6),
              buildKeyWidget(color: Colors.purple, soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildKeyWidget({Color color, int soundNum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () => playSound(soundNum),
      ),
    );
  }

  void playSound(int soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }
}
