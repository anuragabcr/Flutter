import 'package:destiny/story_brain.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Destiny'),
        backgroundColor: Colors.blueGrey,
      ),
      body: const DestinyPage(),
    ),
  ));
}

var storyBrain = StoryBrain();

class DestinyPage extends StatefulWidget {
  const DestinyPage({Key? key}) : super(key: key);

  @override
  State<DestinyPage> createState() => _DestinyPageState();
}

class _DestinyPageState extends State<DestinyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('images/background.png'))),
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
      constraints: const BoxConstraints.expand(),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Center(
              child: Text(
                storyBrain.getStory(),
                style: const TextStyle(fontSize: 30),
              ),
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      if (storyBrain.getOption1() == 'Restart') {
                        storyBrain.restart();
                      } else {
                        storyBrain.nextStory(1);
                      }
                    });
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.green),
                  child: Text(
                    storyBrain.getOption1(),
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      storyBrain.nextStory(2);
                    });
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                  child: Text(
                    storyBrain.getOption2(),
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
