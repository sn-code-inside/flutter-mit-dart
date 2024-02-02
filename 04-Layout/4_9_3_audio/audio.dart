import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class LayoutAudio extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
home: Scaffold(
appBar: AppBar(
title: const Text(
'Audio',
style:
TextStyle(fontSize: 24, color: Colors.white,
letterSpacing: 1),
),
centerTitle: true,backgroundColor: Colors.grey,
elevation: 0,
),
body: const AudioPlayerWidget(),
),);}}
class AudioPlayerWidget extends StatefulWidget {
const AudioPlayerWidget({super.key});
@override
_AudioPlayerWidgetState createState() =>
_AudioPlayerWidgetState();
}

class _AudioPlayerWidgetState extends
State<AudioPlayerWidget> {
final assetsAudioPlayer = AssetsAudioPlayer();

@override
void initState() {
super.initState();
assetsAudioPlayer.open(Audio('assets/audio/musik.mp3'));
}

@override
Widget build(BuildContext context) {
return Center(
child: Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
Container(
height: 50,
width: 120,
color: Colors.red,
child: TextButton(
onPressed: () {
assetsAudioPlayer.play();
},
child: const Text('Abspielen',
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.bold,
color: Colors.white
),),),),
Container(
height: 50,
width: 120,
color: Colors.blue,
child: TextButton(
onPressed: () {
assetsAudioPlayer.stop();
},
child: const Text('Stop',
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.bold,
color: Colors.white
),),),),],),);}

@override
void dispose() {
assetsAudioPlayer.dispose();
super.dispose();
}}
