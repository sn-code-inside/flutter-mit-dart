import 'package:flutter/material.dart';

class LayoutContainer extends StatelessWidget {
const LayoutContainer({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.grey[200],
appBar: AppBar(
title: const Text(
'Container',
style: TextStyle(fontSize: 24,
color: Colors.white,
letterSpacing: 1),
),
centerTitle: true,
elevation: 0,
),
body: Center(
child: Stack(
// Positionierung des zweiten Containers
alignment: const Alignment(-0.8, -0.8),
children: <Widget>[
Container(
height: 400,
width: 300,
color: Colors.red,
),
Container(
height: 200,
width: 200,
color: Colors.amber,
// Positionierung der Textzeile
alignment: Alignment(0.2, 0.6),
),
Text(
'Textzeile',
style: TextStyle(
fontSize: 32,
fontWeight: FontWeight.bold,
color: Colors.red),
),],)),);}}