import 'package:flutter/material.dart';

class LayoutScaffold extends StatelessWidget {
const LayoutScaffold({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.red,
appBar: AppBar(
title: const Text(
'Scaffold',
style:
TextStyle(fontSize: 24,
color: Colors.white,
letterSpacing: 1),
),
centerTitle: true,
elevation: 0,
),
body: Placeholder());
}
}