import 'package:flutter/material.dart';

class LayoutFarbe extends StatelessWidget {
const LayoutFarbe({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.white,
appBar: AppBar(
title: const Text(
'Farbe',
style: TextStyle(
fontSize: 24, 
color: Colors.white, letterSpacing: 1),
),
centerTitle: true,
elevation: 0,
),
body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Container(
height: 150,
width: 300,
color: Color.fromARGB(255, 0, 255, 255),
child: Padding(
padding: const EdgeInsets.all(8.0),
child: Text(
'Cyan',
style: TextStyle(
fontSize: 28,
fontWeight: FontWeight.w500,
color: Colors.black
),),),),
Container(
height: 150,
width: 300,
color: Color.fromRGBO(255, 0, 255, 1.0),
child: Padding(
padding: const EdgeInsets.all(8.0),
child: Text(
'Magenta',
style: TextStyle(
fontSize: 28,
fontWeight: FontWeight.w500,
color: Colors.black
),),),),
Container(
height: 150,
width: 300,
color: Color(0xffffff00),
child: Padding(
padding: const EdgeInsets.all(8.0),
child: Text(
'Yellow',
style: TextStyle(
fontSize: 28,
fontWeight: FontWeight.w500,
color: Colors.black
),),),)],),));}}