import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Audio()
      ),
    );
  }
}
class Audio extends StatefulWidget {
  @override
  _AudioState createState() => _AudioState();
}

class _AudioState extends State<Audio> {
  static AudioCache player = AudioCache();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          criaBotao(Colors.red, 1),
          criaBotao(Colors.orange, 2),
          criaBotao(Colors.yellow, 3),
          criaBotao(Colors.green, 4),
          criaBotao(Colors.teal, 5),
          criaBotao(Colors.blue, 6),
          criaBotao(Colors.purple, 7),
        ],
      ),
    );
  }

  Expanded criaBotao(Color cor, int botao){
    return Expanded(
      child: FlatButton(
        color: cor,
        onPressed:(){
          player.play('note$botao.wav');
        }
      ),
    );
  }
}
