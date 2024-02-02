import 'package:flutter/material.dart';
import 'erste_seite.dart';
import 'zweite_seite.dart';

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
title: 'Variable übertragen',
theme: ThemeData(
primarySwatch: Colors.grey,
),
home: ErsterScreen(),
),
);
}
}