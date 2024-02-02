import 'package:flutter/material.dart';

class LayoutContainer extends StatelessWidget {
const LayoutContainer({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.grey[200],
appBar: AppBar(
title: const Text(
'Margin und Padding',
style:
TextStyle(fontSize: 24, color: Colors.white,
letterSpacing: 1),
),
centerTitle: true,
elevation: 0,
),
body: Container(
margin: const EdgeInsets.only(left: 20, top: 40),
child: Stack(
children: <Widget>[
Container(
height: 400,
width: 300,
color: Colors.red,
),
Padding(
// amberfarbener Container im roten Container
padding: const EdgeInsets.all(50.0),
child: Container(
// Textzeile im amberfarbenen Container
padding: const EdgeInsets.only(left: 20, top: 40),
height: 200,
width: 200,
color: Colors.amber,
child: const Text(
'Textzeile',
style: TextStyle(
fontSize: 32,
fontWeight: FontWeight.bold,
color: Colors.red),
)),)],),));}}