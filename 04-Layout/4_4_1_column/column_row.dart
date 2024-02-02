import 'package:flutter/material.dart';

class LayoutContainer extends StatelessWidget {
const LayoutContainer({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.grey[200],
appBar: AppBar(
title: const Text(
'Column',
style: TextStyle(fontSize: 24,
color: Colors.white,
letterSpacing: 1),
),
centerTitle: true,
elevation: 0,
),
body: Container(
height: double.infinity,
width: double.infinity,
child: Column(
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Container(
height: 100,
width: 100,
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
height: 100,
width: 100,
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
height: 100,
width: 100,
color: Colors.blue,
child: Text(
'Feld 3',
style: TextStyle(
fontSize: 28,
fontWeight: FontWeight.bold,
color: Colors.white),
),),],),),);}}