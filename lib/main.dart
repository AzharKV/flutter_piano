import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioCache audioCache = AudioCache();

  void playSound(int number) {
    final player = AudioCache();
    player.play("note$number.wav");
  }

  Expanded createButton(Color color, int number) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(number);
        },
        color: color,
        child: Text("Click"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            createButton(Colors.teal, 1),
            createButton(Colors.red, 2),
            createButton(Colors.blue, 3),
            createButton(Colors.green, 4),
            createButton(Colors.yellow, 5),
            createButton(Colors.orange, 6),
            createButton(Colors.purple, 7),
          ],
        ),
      ),
    );
  }
}
