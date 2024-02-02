import 'package:flutter/material.dart';
import 'zwei_seiten.dart.dart';

void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});

// This widget is the root of your application.
@override
Widget build(BuildContext context) {
return SafeArea(
child: MaterialApp(
debugShowCheckedModeBanner: false,
title: 'Zwei Screens',
theme: ThemeData(
primarySwatch: Colors.grey,
),
home: ErsterScreen(),
),
);
}
}