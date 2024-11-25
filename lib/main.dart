import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const untitled134());

class untitled134 extends StatelessWidget {
  const untitled134({super.key});

 void playSound(int soundNumber){
   final player = AudioPlayer();
   player.play('assets/note$soundNumber.wav');
 }


  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color:Colors.red,soundNumber:1),
              buildKey(color:Colors.teal,soundNumber:2),
              buildKey(color:Colors.yellow,soundNumber:3),
              buildKey(color:Colors.green,soundNumber:4),
              buildKey(color:Colors.purple,soundNumber:5),
              buildKey(color:Colors.grey,soundNumber:6),
              buildKey(color:Colors.blue,soundNumber:7),

            ],
          ),
        ),
      ),
    );
  }
}
