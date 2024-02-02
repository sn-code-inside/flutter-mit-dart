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
body: LayoutExpanded(),
);}}

class LayoutExpanded extends StatelessWidget {
const LayoutExpanded({super.key});

@override
Widget build(BuildContext context) {
return Center(
child: Row(
children: [
Container(
color: Colors.amber,
height: 200,
width: 50,
),
Expanded(
child: Container(
color: Colors.red,
height: 200,
width: 50,
),)],),);}}
