import 'package:flutter/material.dart';
import 'layout_audio.dart';

void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});

@override
Widget build(BuildContext context) {
return SafeArea(
child: MaterialApp(
debugShowCheckedModeBanner: false,
title: 'audio',
theme: ThemeData(
primarySwatch: Colors.grey,
),
home: LayoutAudio(),
),);}}