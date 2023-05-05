import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp( XylophoneApp());
}

class XylophoneApp extends StatelessWidget {


  Widget buildKey({required int num , required Color colours}){

    return Expanded(child: TextButton(
      onPressed: (){
        playnum(num);
      },
      style: TextButton.styleFrom(
        backgroundColor: colours,
      ),child:Text("D$num") ,
    ),);
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(num: 1, colours: Colors.white),
              buildKey(num: 2, colours: Colors.white),
              buildKey(num: 3, colours: Colors.white),
              buildKey(num: 4, colours: Colors.white),
              buildKey(num: 5, colours: Colors.white),
              buildKey(num: 6, colours: Colors.white),
              buildKey(num: 7, colours: Colors.white),
            ],
          ),Positioned(
            right: 0,top: 85,
            child: Container(
              width: 300,height: 50,
              child: buildKey(num: 8, colours: Colors.black),
            ),
          ),
          Positioned(
            right: 0,top: 200,
            child: Container(
              width: 300,height: 50,
              child: buildKey(num: 9, colours: Colors.black),
            ),
          ),
            Positioned(
              right: 0,top: 310,
              child: Container(
                width: 300,height: 50,
                child: buildKey(num: 10, colours: Colors.black),
              ),
            ),
            Positioned(
              right: 0,top: 420,
              child: Container(
                width: 300,height: 50,
                child: buildKey(num: 11, colours: Colors.black),
              ),
            ),
            Positioned(
              right: 0,top: 535,
              child: Container(
                width: 300,height: 50,
                child: buildKey(num: 12, colours: Colors.black),
              ),
            ),
            Positioned(
              right: 0,top: 645,
              child: Container(
                width: 300,height: 50,
                child: buildKey(num: 13, colours: Colors.black),
              ),
            ),],

        )
      ),
    );
  }

  void playnum(int num){
    final player = AudioPlayer();
    player.play(AssetSource("sound$num.wav"));
  }

}
