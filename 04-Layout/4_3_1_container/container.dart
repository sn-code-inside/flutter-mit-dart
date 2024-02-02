import 'package:flutter/material.dart';

class LayoutContainer extends StatelessWidget {
const LayoutContainer({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.grey[200],
appBar: AppBar(
title: const Text(
'Container',
style:
TextStyle(fontSize: 24,
color: Colors.white,
letterSpacing: 1),
),
centerTitle: true,
elevation: 0,
),
body: Center(
child: Container(
height: 400,
width: 300,
color: Colors.red,
),));}}