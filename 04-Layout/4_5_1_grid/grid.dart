import 'package:flutter/material.dart';

class LayoutContainer extends StatelessWidget {
const LayoutContainer({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.grey[200],
appBar: AppBar(
title: const Text(
'Gridview',
style: TextStyle(fontSize: 24,
color: Colors.white, letterSpacing: 1),
),
elevation: 0,
),
body: Container(
height: double.infinity,
child: Padding(
padding: const EdgeInsets.all(10.0),
child: Container(
child: GridView(
gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
crossAxisCount: 2,
crossAxisSpacing: 5,
mainAxisSpacing: 10,
childAspectRatio: 1),
children: [
Container(
color: Colors.red,
child: Text(
'Feld 1',
style: TextStyle(
fontSize: 28,
fontWeight: FontWeight.bold,
color: Colors.white),
),
),
Container(
color: Colors.green,
child: Text(
'Feld 2',
style: TextStyle(
fontSize: 28,
fontWeight: FontWeight.bold,
color: Colors.white),
),
),
Container(
color: Colors.blue,
child: Text(
'Feld 3',
style: TextStyle(
fontSize: 28,
fontWeight: FontWeight.bold,
color: Colors.white),
),
),
Container(
color: Colors.cyan,
child: Text(
'Feld 4',
style: TextStyle(
fontSize: 28,
fontWeight: FontWeight.bold,
color: Colors.white),
),
),
Container(
color: Colors.purple,
child: Text(
'Feld 5',
style: TextStyle(
fontSize: 28,
color: Colors.white),
),
),
Container(
color: Colors.orange,
child: Text(
'Feld 6',
style: TextStyle(
fontSize: 28,
fontWeight: FontWeight.bold,
color: Colors.white),
),
),
],
),
),
),
),
);
}
}