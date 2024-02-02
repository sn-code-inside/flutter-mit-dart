import 'package:flutter/material.dart';

class HalloWelt extends StatelessWidget {
const HalloWelt({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text(
'Erste App – Hallo Welt',
style: TextStyle(
fontSize: 24,
color: Colors.white,
letterSpacing: 1),
),
centerTitle: true,
elevation: 0,
),
body: Center(
child: (
Text('Hallo Welt',
style: TextStyle(
fontSize: 36
),)
),
);
}
}
