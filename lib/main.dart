import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundnumber){
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }
  Expanded buildKey({Color color , int soundnumber} ){
    return Expanded(
        child: FlatButton(
          color: color,
          onPressed: (){
            playsound(soundnumber);
          } ,
        )
    );

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color:Colors.red , soundnumber:1),
              buildKey(color:Colors.orange , soundnumber:2),
              buildKey(color:Colors.yellow , soundnumber:3),
              buildKey(color:Colors.green , soundnumber:4),
              buildKey(color:Colors.blue , soundnumber:5),
              buildKey(color:Colors.blue.shade700 , soundnumber:6),
              buildKey(color:Colors.blue.shade900 , soundnumber:7),
            ],
          )
        ),
      ),
    );
  }
}


//
// Expanded(
// child: FlatButton(
// color: Colors.orange,
// onPressed: (){
// playsound(2);
// },
// ) ),
// Expanded(
// child: FlatButton(
// color: Colors.yellow,
// onPressed: (){
// playsound(3);
// },
// ) ),
// Expanded(
// child: FlatButton(
// color: Colors.green,
// onPressed: (){
// playsound(4);
// },
// ) ),
// Expanded(
// child: FlatButton(
// color: Colors.blue,
// onPressed: (){
// playsound(5);
// },
// ) ),
// Expanded(
// child: FlatButton(
// color: Colors.blueAccent.shade700,
// onPressed: (){
// playsound(6);
// },
// ) ),
// Expanded(
// child: FlatButton(
// color: Colors.blue.shade900,
// onPressed: (){
// playsound(7);
// },
// ) ),