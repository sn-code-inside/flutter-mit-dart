import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class LayoutVideo extends StatefulWidget {
const LayoutVideo({super.key});

@override
State<LayoutVideo> createState() =>
_LayoutVideoState();
}

class _LayoutVideoState extends State<LayoutVideo>
{
late VideoPlayerController _controller;

@override
void initState() {
super.initState();
_controller =
VideoPlayerController.asset('assets/video/1984.mp4'
)
..initialize().then((_) {
setState(() {});
});
}

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.grey[200],
appBar: AppBar(
title: const Text(
'Video',
style: TextStyle(fontSize: 24, color:
Colors.white, letterSpacing: 1),
),
centerTitle: true,
elevation: 0,
),
body: Container(
width: double.infinity,
height: double.infinity,
child: SingleChildScrollView(
child: Column(
children: [
Container(
height: 200,
width: 356,
margin: EdgeInsets.fromLTRB(20, 50, 20, 20),
child: _controller.value.isInitialized
? Container(
alignment: Alignment.topCenter,
child: VideoPlayer(_controller),
)
: Container(),
),
Container(
margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
child: Container(
margin: EdgeInsets.all(5),
child: (TextButton(
onPressed: () {
setState(() {
_controller.value.isPlaying
? _controller.pause()
: _controller.play();
});
},
child: Icon(
_controller.value.isPlaying
? Icons.pause
: Icons.play_arrow,
),
)),
height: 50,
width: 160,
color: Colors.black12,
),),],),),),);}}
