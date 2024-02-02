import 'package:flutter/material.dart';

class ZweiterScreen extends StatelessWidget {
final String uebertrag;
ZweiterScreen({required this.uebertrag});
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text(
'Zweiter Screen',
style:
TextStyle(fontSize: 24, color: Colors.white,
letterSpacing: 1),
),
centerTitle: true,
elevation: 0,
),
body: Center(
child: Text(uebertrag,
style: TextStyle(
fontSize: 36,
fontWeight: FontWeight.bold,
color: Colors.red
),),),);}}