//import 'package:flutter/material.dart';
//import 'package:audioplayers/audio_cache.dart';
//
//void main() => runApp(XylophoneApp());
//
//// the code above is the same as void main() {runApp(XylophoneApp())
//// }; the arrow is known as Fat Arrow ; its used a the function body
//// used only as a single line of code.
//
//
//class XylophoneApp extends StatelessWidget {
//  void playSound(int soundNumber) {
//    final player = AudioCache();
//
//    // this creates the player
//    player.play('note$soundNumber.wav');
//    print('XylophoneApp Btn pressed: note$soundNumber.wav');
//  }
//
///*
//// Defined by buildKey in the input method '()': use the '{}' in the initialization:
//// has data type of Color and soundNumber for the notes
//*/
//
//  Expanded buildKey({Color color, title: Text,int soundNumber}) {
//    return Expanded(
//      child: FlatButton(
//        color: color,
//        onPressed: () {
//          playSound(soundNumber);
//        },
//        child: Text(
//          "Flat Button",
//        ),
//      ),
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        backgroundColor: Colors.black,
//        body: SafeArea(
//          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.stretch,
//            children: <Widget>[
//              buildKey(color: Colors.teal, soundNumber: 1),
//              buildKey(color: Colors.green, soundNumber: 2),
//              buildKey(color: Colors.lightGreen, soundNumber: 3),
//              buildKey(color: Colors.lime, soundNumber: 4),
//              buildKey(color: Colors.yellow, soundNumber: 5),
//              buildKey(color: Colors.amber, soundNumber: 6),
//              buildKey(color: Colors.orange, soundNumber: 7),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}
