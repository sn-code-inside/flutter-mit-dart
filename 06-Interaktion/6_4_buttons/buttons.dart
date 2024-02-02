import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
const Buttons({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text(
'Buttons',
style: TextStyle(fontSize: 24, color:
Colors.white, letterSpacing: 1),
),
centerTitle: true,
elevation: 0,
),
body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: <Widget>[

// ElevatedButton
ElevatedButton(
onPressed: () {
print('Der ElevatedButton wurde gedrückt.');
},
child: Text(
'Klick mich',
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
// Abgerundete Ecken
),),),

// Textbutton
TextButton(
onPressed: () {
print('Der TextButton wurde gedrückt.');
},
child: Text(
'Klick mich',
style: TextStyle(fontSize: 24, color:
Colors.white),
),
style: TextButton.styleFrom(
minimumSize: Size(200, 100),
backgroundColor: Colors.amber,
padding: EdgeInsets.symmetric(
horizontal: 20, vertical: 10),
textStyle: TextStyle(
fontSize: 18,
),),),

// OutlinedButton
OutlinedButton(
onPressed: () {
print('Der OutlinedButton wurde gedrückt.');
},
child: Text(
'Klick mich',
style: TextStyle(fontSize: 24, color: Colors.blue),
),
style: OutlinedButton.styleFrom(
minimumSize: Size(200, 100),
side: BorderSide(
color: Colors.red, // Farbe des Rahmens
width: 2, // Breite des Rahmens
),
padding: EdgeInsets.symmetric(
horizontal: 20, vertical: 10),
textStyle: TextStyle(
fontSize: 18,
),),),],),),);}}