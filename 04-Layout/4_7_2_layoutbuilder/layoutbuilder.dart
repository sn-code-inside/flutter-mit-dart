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
body: ScreenAusrichtung(),
);}}

class ScreenAusrichtung extends StatelessWidget {
const ScreenAusrichtung({super.key});

@override
Widget build(BuildContext context) {
var ausrichtung =
MediaQuery.of(context).orientation;
print('Ausrichtung: ${ausrichtung}');
return LayoutBuilder(builder: (context,
constraints) {
if (ausrichtung == Orientation.portrait) {
return Container(
color: Colors.red[400],
height: constraints.maxHeight,
width: constraints.maxWidth,
);
} else {
return Container(
color: Colors.amber[300],
height: constraints.maxHeight,
width: constraints.maxWidth,
);}});}}