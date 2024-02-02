import 'package:flutter/material.dart';

class LayoutText extends StatelessWidget {
const LayoutText({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.grey[200],
appBar: AppBar(
title: const Text(
'Text',
style: TextStyle(fontSize: 24,
color: Colors.white, letterSpacing: 1),
),
elevation: 0,
),
body: Center(
child: Container(
width: 300,
decoration: BoxDecoration(
color: Colors.grey[200],
border: Border.all(
width: 2,
),
child: Text('Ich bin Blindtext'),
),
),
);
}
}