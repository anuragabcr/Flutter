import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('XyloPhone'),
      ),
      body: const SafeArea(child: AudioPage()),
    ),
  ));
}

class AudioPage extends StatelessWidget {
  const AudioPage({Key? key}) : super(key: key);
  void setAudio(var index) {
    final player = AudioPlayer();
    player.play(AssetSource('assets_note$index.wav'));
  }

  Widget buildKey(var index, var color) {
    return Expanded(
        child: TextButton(
      style: TextButton.styleFrom(backgroundColor: color),
      onPressed: () {
        setAudio(index);
      },
      child: const Text(
        '',
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        buildKey(1, Colors.red),
        buildKey(2, Colors.teal),
        buildKey(3, Colors.yellowAccent),
        buildKey(4, Colors.brown),
        buildKey(5, Colors.cyanAccent),
        buildKey(6, Colors.purpleAccent),
        buildKey(7, Colors.lightGreen),
      ],
    );
  }
}
