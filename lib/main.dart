import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }
  Expanded buidKey({required Color color,required int soundNumber } ){
    return Expanded(
      child: TextButton
        (
          onPressed: (){
            playSound(soundNumber);
          },
          style: TextButton.styleFrom(
            backgroundColor: color,   // Background color
            foregroundColor: Colors.white,  // Text color
          ),
          child: const Text("play button")
      ),
    );
  }
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buidKey(color: Colors.red , soundNumber: 1),
              buidKey(color: Colors.orange , soundNumber: 2),
              buidKey(color: Colors.yellow , soundNumber: 3),
              buidKey(color: Colors.blue , soundNumber: 4),
              buidKey(color: Colors.purple , soundNumber: 5),
              buidKey(color: Colors.teal , soundNumber: 6),
              buidKey(color: Colors.green , soundNumber: 7),

            ],
          ),
        ),
      ),
    );
  }
}
