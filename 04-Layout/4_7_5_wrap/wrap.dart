import 'package:flutter/material.dart';

class LayoutResponsive extends StatelessWidget {
const LayoutResponsive({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.grey[200],
appBar: AppBar(
title: const Text(
'Responsive Layout',
style: TextStyle(
fontSize: 24, 
color: Colors.white, letterSpacing: 1),
),
centerTitle: true,
elevation: 0,
),
body: LayoutWrap(),
);}}

class LayoutWrap extends StatelessWidget {
const LayoutWrap({super.key});

@override
Widget build(BuildContext context) {
return Center(
child: Wrap(children: <Widget>[
Container(
color: Colors.red,
height: 200,
width: 200,
),
Container(
color: Colors.green,
height: 200,
width: 200,
),
Container(
color: Colors.blue,
height: 200,
width: 200,
),]));}}