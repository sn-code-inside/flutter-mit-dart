import 'package:flutter/material.dart';

class LayoutBild extends StatelessWidget {
const LayoutBild ({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.grey[200],
appBar: AppBar(
title: const Text(
'Bild',
style: TextStyle(
fontSize: 24,
color: Colors.white, letterSpacing: 1),
),
centerTitle: true,
elevation: 0,
),
body: Center(
child: Container(
height: 300,
width: 300,
decoration: BoxDecoration(
color: Colors.grey[200],
border: Border.all(width: 2, style:
BorderStyle.solid)),
child:
Image.asset('assets/images/leuchtturm.png'),
),),);}}