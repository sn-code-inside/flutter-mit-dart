import 'package:flutter/material.dart';

class ErsterScreen extends StatelessWidget {
const ErsterScreen({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text(
'Erster Screen',
style: TextStyle(fontSize: 24, color:
Colors.white, letterSpacing: 1),
),
centerTitle: true,
elevation: 0,
),
body: Center(
child: ElevatedButton(
child: const Text(
'Zum zweiten Screen',
style: TextStyle(fontSize: 24, color:
Colors.white, letterSpacing: 1),
),
style: ElevatedButton.styleFrom(
fixedSize: Size(200, 100),
backgroundColor: Colors.green,
elevation: 5, // Schatten-Effekt
padding: EdgeInsets.symmetric(
horizontal: 20, vertical: 10), // Innenabstand
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(20),
),
),
onPressed: () {
Navigator.push(
context,
MaterialPageRoute(builder: (context) =>
ZweiterScreen()),
);},),),);}}

class ZweiterScreen extends StatelessWidget {
const ZweiterScreen({super.key});
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text(
'Zweiter Screen',
style: TextStyle(fontSize: 24, color:
Colors.white, letterSpacing: 1),
),
centerTitle: true,
elevation: 0,
),
body: Center(
child: ElevatedButton(
onPressed: () {
Navigator.pop(context);
},
child: const Text(
'Zurück zum ersten Screen',
style: TextStyle(fontSize: 24, color:
Colors.white),
),
style: ElevatedButton.styleFrom(
fixedSize: Size(200, 100),
backgroundColor: Colors.red,
elevation: 5, // Schatten-Effekt
padding: EdgeInsets.symmetric(
horizontal: 20, vertical: 10), // Innenabstand
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(20),
),),),),);}}
