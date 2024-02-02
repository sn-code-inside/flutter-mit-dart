import 'package:flutter/material.dart';
import 'dart:math';

class Zufall extends StatefulWidget {
const Zufall({super.key});

@override
State<Zufall> createState() => _ZufallState();
}

class _ZufallState extends State<Zufall> {
Color farbe1 = Colors.amber;
Color farbe2 = Colors.red;
Color farbe3 = Colors.blue;
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text(
'Random - Farbwechsel',
style:
TextStyle(fontSize: 24, color: Colors.white,
letterSpacing: 1),
),
centerTitle: true,
elevation: 0,
),
body: Container(
width: double.infinity,
height: double.infinity,
child: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
AnimatedContainer(
width: 300,
height: 150,
decoration: BoxDecoration(
color: farbe1,
),
duration: Duration(seconds: 1),
curve: Curves.fastOutSlowIn,
),
AnimatedContainer(
width: 300,
height: 150,
decoration: BoxDecoration(
color: farbe2,
),
duration: Duration(seconds: 1),
curve: Curves.fastOutSlowIn,
),
AnimatedContainer(
width: 300,
height: 150,
decoration: BoxDecoration(
color: farbe3,
),
duration: Duration(seconds: 1),
curve: Curves.fastOutSlowIn,
),]),),
floatingActionButton: FloatingActionButton(
backgroundColor: Colors.grey,
onPressed: () {
setState(() {
final random = Random();
farbe1 = Color.fromARGB(
255,
random.nextInt(255),
random.nextInt(255),
random.nextInt(255),
);
farbe2 = Color.fromARGB(
255,
random.nextInt(255),
random.nextInt(255),
random.nextInt(255),
);
farbe3 = Color.fromARGB(255,
random.nextInt(255),
random.nextInt(255),
random.nextInt(255),
);});},
child: const Icon(Icons.play_arrow),
),);}}