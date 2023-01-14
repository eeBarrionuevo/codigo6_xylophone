import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class HomePage extends StatelessWidget {
  AudioPlayer mandarina = AudioPlayer();

  void playSound(int number) {
    mandarina.play(AssetSource("audios/note$number.wav"));
  }

  Widget buildKey({Color? color, int number = 1}) {
    return Expanded(
      child: MaterialButton(
        color: color,
        onPressed: () {
          playSound(number);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // ElevatedButton(
          //   onPressed: () {
          //     AudioPlayer mandarina = AudioPlayer();
          //     mandarina.play(AssetSource("audios/note1.wav"));
          //   },
          //   child: Text("Click"),
          // ),
          buildKey(color: Color(0xff10002b), number: 1),
          buildKey(color: Color(0xff240046), number: 2),
          buildKey(color: Color(0xff3c096c), number: 3),
          buildKey(color: Color(0xff5a189a), number: 4),
          buildKey(color: Color(0xff7b2cbf), number: 5),
          buildKey(color: Color(0xff9d4edd), number: 6),
          buildKey(color: Color(0xffc77dff), number: 7),

          // Expanded(
          //   flex: 5,
          //   child: Container(
          //     color: Colors.red,
          //   ),
          // ),
          // Expanded(
          //   flex: 2,
          //   child: Container(
          //     color: Colors.amber,
          //   ),
          // ),
          // Expanded(
          //   flex: 3,
          //   child: Container(
          //     color: Colors.blue,
          //   ),
          // ),

          // Image.network(
          //   "https://images.pexels.com/photos/14967402/pexels-photo-14967402.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          // ),
        ],
      ),
    );
  }
}
