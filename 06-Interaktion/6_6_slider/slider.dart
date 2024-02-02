import 'package:flutter/material.dart';

class Schieberegler extends StatefulWidget {
const Schieberegler({super.key});

@override
State<Schieberegler> createState() =>
_SchiebereglerState();
}

class _SchiebereglerState extends
State<Schieberegler> {
int fR = 228;
int fG = 20;
int fB = 173;
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text(
'Slider - Farbmischung',
style: TextStyle(fontSize: 24, color:
Colors.white, letterSpacing: 1),
),
centerTitle: true,
elevation: 0,
),
body: Container(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
Padding(
padding: const EdgeInsets.fromLTRB(0, 0, 0, 50.0),
child: Text(
"Mischen Sie Ihre Farbe!",
style: TextStyle(
fontSize: 24.0,
fontWeight: FontWeight.bold,
),),),
Text(
fR.toString(),
style: TextStyle(
fontSize: 24, fontWeight: FontWeight.w900, color:
Colors.red),
),
Slider(
min: 0,
max: 255,
value: fR.toDouble(),
onChanged: (double newValue) => {
setState(() => {fR = newValue.round()})
},
activeColor: Colors.red,
inactiveColor: Colors.grey,
),
Text(
fG.toString(),
style: TextStyle(
fontSize: 24,
fontWeight: FontWeight.w900,
color: Colors.green),
),
Slider(
min: 0,
max: 255,
value: fG.toDouble(),
onChanged: (double newValue) => {
setState(() => {fG = newValue.round()})
},
activeColor: Colors.green,
inactiveColor: Colors.grey,
),
Text(
fB.toString(),
style: TextStyle(
fontSize: 24,
fontWeight: FontWeight.w900,
color: Colors.blue),
),
Slider(
min: 0,
max: 255,
value: fB.toDouble(),
onChanged: (double newValue) => {
setState(() => {fB = newValue.round()})
},
activeColor: Colors.blue,
inactiveColor: Colors.grey,
),
Padding(
padding: const EdgeInsets.fromLTRB(0, 30.0, 0, 0),
child: Container(
width: 200.0,
height: 200.0,
color: Color.fromRGBO(fR, fG, fB, 1.0),
),),],),),);}}