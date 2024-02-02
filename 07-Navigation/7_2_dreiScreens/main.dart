import 'package:flutter/material.dart';
import 'screenA.dart';
import 'screenB.dart';
import 'screenC.dart';

void main() {
runApp( MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return SafeArea(
child: MaterialApp(
debugShowCheckedModeBanner: false,
theme: ThemeData(primarySwatch: Colors.grey),

initialRoute: '/screenA', // Startbildschirm festlegen
routes: {
'/screenA': (context) => const ScreenA(),
'/screenB': (context) => const ScreenB(),
'/screenC': (context) => const ScreenC(),
},),);}}

